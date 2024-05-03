#include "Log.h"
#include <QtCore/qdebug.h>
#include <QtCore/qfile.h>
#include <QtCore/qtextstream.h>
#include <QGuiApplication>
#include <iostream>
#include <QDateTime>
#include <QStandardPaths>
#include <QDir>
#include <QThread>
#include <QSettings>
#include <QRegularExpression>
#include "Version.h"
#ifdef WIN32
#include <process.h>
#else
#include <unistd.h>
#endif

#ifndef QT_ENDL
#  if (QT_VERSION >= QT_VERSION_CHECK(5, 14, 0))
#    define QT_ENDL Qt::endl
#  else
#    define QT_ENDL endl
#  endif
#endif

static QString g_app = {};
static QString g_file_path= {};
static bool g_logError = false;

static std::unique_ptr<QFile> g_logFile = nullptr;
static std::unique_ptr<QTextStream> g_logStream = nullptr;

static int g_logLevel = 4;

std::map<QtMsgType, int> logLevelMap = {
    {QtFatalMsg,0},
    {QtCriticalMsg,1},
    {QtWarningMsg,2},
    {QtInfoMsg,3},
    {QtDebugMsg,4}
};

QString Log::prettyProductInfoWrapper()
{
    auto productName = QSysInfo::prettyProductName();
#if QT_VERSION < QT_VERSION_CHECK(6, 5, 0)
#if defined(Q_OS_MACOS)
    auto macosVersionFile = QString::fromUtf8("/System/Library/CoreServices/.SystemVersionPlatform.plist");
    auto fi = QFileInfo (macosVersionFile);
    if (fi.exists() && fi.isReadable()) {
        auto plistFile = QFile(macosVersionFile);
        plistFile.open(QIODevice::ReadOnly);
        while (!plistFile.atEnd()) {
            auto line = plistFile.readLine();
            if (line.contains("ProductUserVisibleVersion")) {
                auto nextLine = plistFile.readLine();
                if (nextLine.contains("<string>")) {
                    QRegularExpression re(QString::fromUtf8("\\s*<string>(.*)</string>"));
                    auto matches = re.match(QString::fromUtf8(nextLine));
                    if (matches.hasMatch()) {
                        productName = QString::fromUtf8("macOS ") + matches.captured(1);
                        break;
                    }
                }
            }
        }
    }
#endif
#endif
#if defined(Q_OS_WIN)  //所有支持WIN的版本上定义
    QSettings regKey {QString::fromUtf8("HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion"), QSettings::NativeFormat};
    if (regKey.contains(QString::fromUtf8("CurrentBuildNumber"))) {
        auto buildNumber = regKey.value(QString::fromUtf8("CurrentBuildNumber")).toInt();
        if (buildNumber > 0) {
            if (buildNumber < 9200) {
                productName = QString::fromUtf8("Windows 7 build %1").arg(buildNumber);
            }
            else if (buildNumber < 10240) {
                productName = QString::fromUtf8("Windows 8 build %1").arg(buildNumber);
            }
            else if (buildNumber < 22000) {
                productName = QString::fromUtf8("Windows 10 build %1").arg(buildNumber);
            }
            else {
                productName = QString::fromUtf8("Windows 11 build %1").arg(buildNumber);
            }
        }
    }
#endif
    return productName;
}

static inline void messageHandler(const QtMsgType type, const QMessageLogContext &context, const QString &message)
{
    if(message == "Could not get the INetworkConnection instance for the adapter GUID."){
        return;
    }
    if(logLevelMap[type]>g_logLevel){  //》0
        return;
    }
    if (!message.isEmpty()) {
        QString levelName;
        switch (type) {  //QtMsgType enum
        case QtDebugMsg:
            levelName = QStringLiteral("Debug");  //使用QStringLiteral()使得字符串在编译时就已确定，避免额外的花费
            break;
        case QtInfoMsg:
            levelName = QStringLiteral("Info");
            break;
        case QtWarningMsg:
            levelName = QStringLiteral("Warning");
            break;
        case QtCriticalMsg:
            levelName = QStringLiteral("Critical");
            break;
        case QtFatalMsg:
            levelName = QStringLiteral("Fatal");
            break;
        }
        //WIN
        QString fileAndLineLogStr;
        if(context.file){
            std::string strFileTmp = context.file;
            const char* ptr = strrchr(strFileTmp.c_str(), '/');
            if (nullptr != ptr) {
                char fn[512] = {0};
                sprintf(fn, "%s", ptr + 1);// WIN 将地址后面的字符串写入到数组fn中
                strFileTmp = fn;
            }
            //Linux上查找路径
            const char* ptrTmp = strrchr(strFileTmp.c_str(), '\\');
            if (nullptr != ptrTmp) {
                char fn[512] = {0};
                sprintf(fn, "%s", ptrTmp + 1);
                strFileTmp = fn;
            }
            fileAndLineLogStr = QString::fromStdString("[%1:%2]").arg(QString::fromStdString(strFileTmp),QString::number(context.line));
        }//字符串替换为arg中的参数 context.line返回报错源代码信息的行号
        const QString finalMessage = QString::fromStdString("%1[%2]%3[%4]:%5").arg(
            QDateTime::currentDateTime().toString("yyyy/MM/dd hh:mm:ss.zzz"),
            levelName,
            fileAndLineLogStr,
            QString::number(reinterpret_cast<quintptr>(QThread::currentThreadId())),
            message);//强制类型转换为系统支持的数据
        if ((type == QtInfoMsg) || (type == QtDebugMsg)) {
            std::cout << qPrintable(finalMessage) << std::endl;
        } else {
            std::cerr << qPrintable(finalMessage) << std::endl;
        }
        if (g_logError) {
            return;
        }
        if (!g_logFile) {  //本地日志
            g_logFile = std::make_unique<QFile>(g_file_path);
            if (!g_logFile->open(QFile::WriteOnly | QFile::Text | QFile::Append)) {
                std::cerr << "Can't open file to write: " << qPrintable(g_logFile->errorString()) << std::endl;   //返回上次故障发生的可读说明
                g_logFile.reset();
                g_logError = true;
                return;
            }
        }
        if (!g_logStream) {
            g_logStream = std::make_unique<QTextStream>();
            g_logStream->setDevice(g_logFile.get());
        }
        (*g_logStream) << finalMessage << QT_ENDL;
        g_logStream->flush();
    }
}

void Log::setup(const QString &app,int level)
{
    Q_ASSERT(!app.isEmpty());//断言 程序并不会因此而终止
    if (app.isEmpty()) {
        return;
    }
    g_logLevel = level;
    static bool once = false; //检查是否是初次
    if (once) {
        return;
    }
    once = true;
    g_app = app;
    const QString logFileName = QString("%1_%2.log").arg(g_app,QDateTime::currentDateTime().toString("yyyyMMdd"));
    const QString logDirPath = QStandardPaths::writableLocation(QStandardPaths::AppLocalDataLocation)+"/log";
    const QDir logDir(logDirPath);
    if(!logDir.exists()){  //若不存在这样的目录，则会创建一个途径此目录的所有父目录
        logDir.mkpath(logDirPath);
    }
    g_file_path = logDir.filePath(logFileName);
    qInstallMessageHandler(messageHandler);  //初始化一个自定义的消息处理器                                                   消息处理程序是一个输出调试消息、警告、关键和致命错误消息的函数。
    qInfo()<<"===================================================";
    qInfo()<<"[AppName]"<<g_app;
    qInfo()<<"[AppVersion]"<<APPLICATION_VERSION;
#ifdef WIN32
    qInfo()<<"[ProcessId]"<<QString::number(_getpid());
#else
    qInfo()<<"[ProcessId]"<<QString::number(getpid());
#endif
    qInfo()<<"[GitHashCode]"<<COMMIT_HASH;
    qInfo()<<"[DeviceInfo]";
    qInfo()<<"  [DeviceId]"<<QSysInfo::machineUniqueId();
    qInfo()<<"  [Manufacturer]"<<prettyProductInfoWrapper();
    qInfo()<<"  [CPU_ABI]"<<QSysInfo::currentCpuArchitecture();
    qInfo()<<"[LOG_LEVEL]"<<g_logLevel;
    qInfo()<<"[LOG_PATH]"<<g_file_path;
    qInfo()<<"===================================================";
}

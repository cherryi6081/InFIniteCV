#include <QDir>
#include <QGuiApplication>
#include <QIcon>
#include <QLoggingCategory>
#include <QNetworkProxy>
#include <QProcess>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickWindow>
#include <QSslConfiguration>
#include <QtQml/qqmlextensionplugin.h>
#include <QtWebEngineQuick/qtwebenginequickglobal.h>
#include <QtWebView>
#include "AppInfo.h"
#include "Version.h"
#include "helper/Log.h"
#include "src/component/CircularReveal.h"
#include "src/component/FileWatcher.h"
#include "src/component/FpsItem.h"
#include "src/helper/SettingsHelper.h"

#ifdef FLUENTUI_BUILD_STATIC_LIB
#if (QT_VERSION > QT_VERSION_CHECK(6, 2, 0))
Q_IMPORT_QML_PLUGIN(FluentUIPlugin)
#endif
#include <FluentUI.h>
#endif

#ifdef WIN32
#include "app_dmp.h"
#endif

int main(int argc, char *argv[])
{
#ifdef WIN32
    ::SetUnhandledExceptionFilter(MyUnhandledExceptionFilter);
    qputenv("QT_QPA_PLATFORM","windows:darkmode=2");
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(6, 0, 0))
    qputenv("QT_QUICK_CONTROLS_STYLE","Basic");
#else
    qputenv("QT_QUICK_CONTROLS_STYLE","Default");
#endif
#ifdef Q_OS_LINUX
    //fix bug UOSv20 does not print logs
    qputenv("QT_LOGGING_RULES","");
    //fix bug UOSv20 v-sync does not work
    qputenv("QSG_RENDER_LOOP","basic");
#endif
    QGuiApplication::setOrganizationName("LiuJiaXi");
    QGuiApplication::setApplicationName("InFiniteUI");
    QGuiApplication::setApplicationDisplayName("InFiniteUI Exmaple");
    QGuiApplication::setApplicationVersion(APPLICATION_VERSION);
    SettingsHelper::getInstance()->init(argv);  //初始化设置信息
    Log::setup("example");  //初始化日志  默认输出到qDebug() level=4
#if (QT_VERSION >= QT_VERSION_CHECK(6, 5, 0))
    QQuickWindow::setGraphicsApi(QSGRendererInterface::OpenGL);
#endif
#if (QT_VERSION < QT_VERSION_CHECK(6, 0, 0))
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication::setAttribute(Qt::AA_UseHighDpiPixmaps);
#if (QT_VERSION >= QT_VERSION_CHECK(5, 14, 0))
    QGuiApplication::setHighDpiScaleFactorRoundingPolicy(Qt::HighDpiScaleFactorRoundingPolicy::PassThrough);
#endif
#endif
    QGuiApplication app(argc, argv);
    QtWebEngineQuick::initialize();
    QtWebView::initialize();
    app.setWindowIcon(QIcon("/root/InFiniteUI/example/res/image/InFiniteIcon.png"));
    QQmlApplicationEngine engine;
    //设置qml上下文 注册C++类
    engine.rootContext()->setContextProperty("AppInfo",AppInfo::getInstance());
    engine.rootContext()->setContextProperty("SettingsHelper",SettingsHelper::getInstance());
#ifdef FLUENTUI_BUILD_STATIC_LIB
    FluentUI::getInstance()->registerTypes(&engine);
#endif
    qmlRegisterType<CircularReveal>("example", 1, 0, "CircularReveal");
    qmlRegisterType<FileWatcher>("example", 1, 0, "FileWatcher");
    qmlRegisterType<FpsItem>("example", 1, 0, "FpsItem");
    const QUrl url(QStringLiteral("qrc:/example/qml/App.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);
    const int exec = QGuiApplication::exec();
    if (exec == 931) {
        QProcess::startDetached(qApp->applicationFilePath(), QStringList());
    }
    return exec;
}

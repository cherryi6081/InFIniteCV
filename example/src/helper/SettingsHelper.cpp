#include "SettingsHelper.h"

#include <QDataStream>
#include <QStandardPaths>

SettingsHelper::SettingsHelper(QObject *parent) : QObject(parent)
{

}

SettingsHelper::~SettingsHelper() = default;  //默认析构函数

void SettingsHelper::save(const QString& key,QVariant val)
{
    m_settings->setValue(key, val);
}

QVariant SettingsHelper::get(const QString& key,QVariant def){
    QVariant data = m_settings->value(key);
    if (!data.isNull() && data.isValid()) {
        return data;  //读取设置中的合法信息
    }
    return def;
}

void SettingsHelper::init(char *argv[]){
    auto applicationPath = QString::fromStdString(argv[0]);
    const QFileInfo fileInfo(applicationPath);
    const QString iniFileName = fileInfo.completeBaseName() + ".ini"; // QFileInfo fi("/tmp/archive.tar.gz");QString base = fi.completeBaseName();  // base = "archive.tar"
    const QString iniFilePath = QStandardPaths::writableLocation(QStandardPaths::AppLocalDataLocation) + "/" + iniFileName;
    m_settings.reset(new QSettings(iniFilePath, QSettings::IniFormat));  //QSettings::IniFormat将设置存储在INI文件中。注意，INI文件失去了数字数据和用于编码它们的字符串之间的区别，因此作为数字写入的值应作为QString读回。
}

#ifndef SETTINGSHELPER_H
#define SETTINGSHELPER_H

#include <QtCore/qobject.h>
#include <QtQml/qqml.h>
#include <QSettings>
#include <QScopedPointer>
#include <QFileInfo>
#include <QCoreApplication>
#include <QDir>
#include "src/singleton.h"

class SettingsHelper : public QObject
{
    Q_OBJECT
private:
    explicit SettingsHelper(QObject* parent = nullptr);
public:
    SINGLETON(SettingsHelper)  //指定单例程化SettingsHelper类
    ~SettingsHelper() override;  //覆盖了一个方法并且对其重写
    void init(char *argv[]);
    //标识qml可以调用的函数
    Q_INVOKABLE void saveDarkMode(int darkModel){save("darkMode",darkModel);}
    Q_INVOKABLE int getDarkMode(){return get("darkMode",QVariant(0)).toInt();}
    Q_INVOKABLE void saveUseSystemAppBar(bool useSystemAppBar){save("useSystemAppBar",useSystemAppBar);}
    Q_INVOKABLE bool getUseSystemAppBar(){return get("useSystemAppBar",QVariant(false)).toBool();}
private:
    void save(const QString& key,QVariant val);
    QVariant get(const QString& key,QVariant def={});
private:
    QScopedPointer<QSettings> m_settings;  //动态分配内存指针
};

#endif // SETTINGSHELPER_H

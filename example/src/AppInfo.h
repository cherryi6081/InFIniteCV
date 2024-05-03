#ifndef APPINFO_H
#define APPINFO_H

#include <QObject>
#include <QQmlApplicationEngine>
#include "stdafx.h"
#include "singleton.h"

class AppInfo : public QObject
{
    Q_OBJECT
    Q_PROPERTY_AUTO(QString,version)
private:
    explicit AppInfo(QObject *parent = nullptr);
public:
    SINGLETON(AppInfo)
    Q_INVOKABLE void testCrash(); //允许通过元对象系统调用它们
};

#endif // APPINFO_H

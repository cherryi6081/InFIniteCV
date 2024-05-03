#include "AppInfo.h"

#include <QQmlContext>
#include <QDebug>
#include <QGuiApplication>
#include "Version.h"

AppInfo::AppInfo(QObject *parent)
    : QObject{parent}
{
    version(APPLICATION_VERSION);  //设置该软件的版本为1.0.0
}

void AppInfo::testCrash(){
    auto *crash = reinterpret_cast<volatile int *>(0); //volatile​表明变量能被后台程序修改
    *crash = 0;
}

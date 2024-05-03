#ifndef FLUAPP_H
#define FLUAPP_H

#include <QObject>
#include <QWindow>
#include <QtQml/qqml.h>
#include <QJsonArray>
#include <QQmlContext>
#include <QJsonObject>
#include <QQmlEngine>
#include "FluRegister.h"
#include "stdafx.h"
#include "singleton.h"

/**
 * @brief The FluApp class
 */
class FluApp : public QObject
{
    Q_OBJECT
    Q_PROPERTY_AUTO(bool,vsync)
    Q_PROPERTY_AUTO(QString,initialRoute);
    Q_PROPERTY_AUTO(QJsonObject,routes);
    Q_PROPERTY_AUTO(bool,useSystemAppBar);
    Q_PROPERTY_AUTO(QString,windowIcon);
    QML_NAMED_ELEMENT(FluApp)  //声明要在QML中可用的封闭类型或名称空间
    QML_SINGLETON  //在QML中声明封闭类型为单例类型。
private:
    explicit FluApp(QObject *parent = nullptr);
    ~FluApp();
public:
    SINGLETON(FluApp)
    static FluApp *create(QQmlEngine *qmlEngine, QJSEngine *jsEngine){return getInstance();}
    Q_INVOKABLE void run();
    Q_INVOKABLE void navigate(const QString& route,const QJsonObject& argument  = {},FluRegister* fluRegister = nullptr);
    Q_INVOKABLE void init(QObject *window);
    Q_INVOKABLE void exit(int retCode = 0);
    void addWindow(QQuickWindow* window);
    void removeWindow(QQuickWindow* window);
private:
    QMap<quint64, QQuickWindow*> _windows;
    QObject* _application = nullptr;
};

#endif // FLUAPP_H

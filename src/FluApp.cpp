#include "FluApp.h"

#include <QQmlEngine>
#include <QGuiApplication>
#include <QQmlContext>
#include <QQuickItem>
#include <QTimer>
#include <QUuid>
#include <QFontDatabase>
#include <QClipboard>

FluApp::FluApp(QObject *parent):QObject{parent}{
    vsync(true);
    useSystemAppBar(false);
}

FluApp::~FluApp(){
}

void FluApp::init(QObject *application){
    this->_application = application;
    QJSEngine * jsEngine = qjsEngine(_application);
    std::string jsFunction = R"( (function () { console.log("InFiniteUI");}) )";
    QJSValue function = jsEngine->evaluate(QString::fromStdString(jsFunction));
    jsEngine->globalObject().setProperty("__fluentui",function); //设置全局对象及其属性
}

void FluApp::run(){
    navigate(initialRoute());
}

void FluApp::navigate(const QString& route,const QJsonObject& argument,FluRegister* fluRegister){
    if(!routes().contains(route)){
        qCritical()<<"No route found "<<route;
        return;
    }
    QQmlEngine *engine = qmlEngine(_application);
    QQmlComponent component(engine, routes().value(route).toString());  //获取传入的qml资源地址
    if (component.isError()) {
        qCritical() << component.errors();
        return;
    }
    QVariantMap properties;  //<QString,QVariant>
    properties.insert("_route",route);
    if(fluRegister){
        properties.insert("_pageRegister",QVariant::fromValue(fluRegister));
    }
    properties.insert("argument",argument);
    QQuickWindow *win=nullptr; //创建窗口
    for (const auto& pair : _windows.toStdMap()) {
        QString r =  pair.second->property("_route").toString();
        if(r == route){
            win = pair.second;
            break;
        }
    }
    if(win){
        int launchMode = win->property("launchMode").toInt(); //返回win属性为launchMode的值并强制类型为int
        if(launchMode == 1){
            win->setProperty("argument",argument);
            win->show();
            win->raise();
            win->requestActivate();
            return;
        }else if(launchMode == 2){
            win->close();
        }
    }
    win = qobject_cast<QQuickWindow*>(component.createWithInitialProperties(properties));//在指定的上下文中创建该组件的对象实例，并使用initialProperties初始化其顶级属性。
    if(fluRegister){
        fluRegister->to(win);
    }
    win->setColor(QColor(Qt::transparent));
}

void FluApp::exit(int retCode){
    for (const auto& pair : _windows.toStdMap()) {
        pair.second->close();
        removeWindow(pair.second);
    }
    qApp->exit(retCode);  // qApp 指向唯一应用程序对象的全局指针。它相当于QCoreApplication::instance()，但是转换为QApplication指针，所以只有当唯一的应用程序对象是QApplication时才有效。
}

void FluApp::addWindow(QQuickWindow* window){
    _windows.insert(window->winId(),window);
}

void FluApp::removeWindow(QQuickWindow* window){
    if(window){
        _windows.remove(window->winId());
        window->deleteLater();
        window = nullptr;
    }
}

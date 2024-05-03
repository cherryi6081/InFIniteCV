#ifndef LOG_H
#define LOG_H
#include <QtCore/qstring.h>

namespace Log  //使用相同的名字来实现不同的库 不同命名空间内可以有相同名字的成员 namespace允许像类，对象，函数聚集在一个名字下。本质上讲namespace是对全局作用域的细分。
{
    QString prettyProductInfoWrapper();
    void setup(const QString &app,int level = 4);
}

#endif // LOG_H

#ifndef SINGLETON_H
#define SINGLETON_H

#include <QMutex>  //保护对象、数据结构或代码段，以便一次只有一个线程可以访问它(

template <typename T>
class Singleton {
public:
    static T* getInstance();

private:
    Q_DISABLE_COPY_MOVE(Singleton)  //宏，禁止对给定类使用复制构造函数、赋值操作符、移动构造函数和移动赋值操作符。
};


template <typename T>  //实例化类
T* Singleton<T>::getInstance() {
    static QMutex mutex;
    QMutexLocker locker(&mutex);//构造一个QMutexLocker并锁定互斥锁。当QMutexLocker被销毁时，互斥锁将被解锁。如果互斥锁是nullptr, QMutexLocker不做任何事情。
    static T* instance = nullptr;
    if (instance == nullptr) {
        instance = new T();
    }
    return instance;
}

#define SINGLETON(Class)                        \
private:                                        \
    friend class Singleton<Class>;              \
    public:                                     \
    static Class* getInstance() {               \
        return Singleton<Class>::getInstance(); \
}

#define HIDE_CONSTRUCTOR(Class)         \
private:                                \
    Class() = default;                  \
    Class(const Class& other) = delete; \
    Q_DISABLE_COPY_MOVE(Class);

#endif // SINGLETON_H

//默认存在构造函数 Class() = default;
//默认存在析构函数 Class() = delete

pragma Singleton  // 单例模式就是在软件声明周期内只有一个实例对象 以空间换时间

import QtQuick

QtObject {

    property string home
    property string basic_functions
    property string theming
    property string dark_mode
    property string sys_dark_mode
    property string search
    property string about
    property string settings
    property string locale
    property string _view_display_mode
    property string other

    function zh(){
        home="首页"
        basic_functions="基本功能"
        theming="主题"
        dark_mode="夜间模式"
        sys_dark_mode="跟随系统"
        search="查找"
        about="关于"
        settings="设置"
        locale="语言环境"
        _view_display_mode="导航视图显示模式"
        other="其他"
    }

    function en(){
        home="Home"
        basic_functions="Basic Functions"
        theming="Theming"
        dark_mode="Dark Mode"
        sys_dark_mode="Sync with system"
        search="Search"
        about="About"
        settings="Settings"
        locale="Locale"
        _view_display_mode="View Display Mode"
        other="Other"
    }

    property string __locale
    property var __localeList: ["Zh","En"]

    on__LocaleChanged: {
        if(__locale === "Zh"){
            zh()
        }else{
            en()
        }
    }

    Component.onCompleted: {
        __locale = "Zn"  //默认打开是用中文
    }

}

import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import Qt.labs.platform
import FluentUI
import example
import "qrc:///example/qml/component"
import "qrc:///example/qml/global"
import "qrc:///example/qml/viewmodel"

FluWindow {

    id:window
    title: "InFiniteUI"
    width: 960
    height: 600
    minimumWidth: 520
    minimumHeight: 200
    launchMode: FluWindowType.SingleTask
    fitsAppBarWindows: true
    appBar: FluAppBar {
        height: 30
        darkText: Lang.dark_mode
        showDark: true
        darkClickListener:(button)=>handleDarkChanged(button)  //js
        closeClickListener: ()=>{dialog_close.open()}  //js
        z:7
    }

    SettingsViewModel{
        id:viewmodel_settings
    }

    FluEvent{
        id:event_checkupdate
        name: "checkUpdate"
        onTriggered: {
            checkUpdate(false)  //js函数
        }
    }

    onFirstVisible: {
        timer_tour_delay.restart()  //如果计时器没有运行，它将被启动，否则它将被停止，重置到初始状态并启动。在调用restart()之后，running属性将为true。
    }

    Timer{  //计时器可用于在给定间隔内触发一次或多次操作。
        id:timer_tour_delay
        interval: 200
        onTriggered: {
            tour.open()
        }
    }

    Component.onCompleted: {
        //checkUpdate(true)  //窗口组建一经加载完毕后
        FluEventBus.registerEvent(event_checkupdate)  //添加更新事件
    }

    Component.onDestruction: {
        FluEventBus.unRegisterEvent(event_checkupdate)  //删除更新事件
    }

    SystemTrayIcon {  //为系统托盘中的应用程序提供了一个图标。
        id:system_tray
        visible: true
        icon.source: "qrc:/example/res/image/favicon.ico"
        tooltip: "InFiniteUI"  //提示文本
        menu: Menu {  //提供在桌面上的退出菜单选项
            MenuItem {
                text: "退出"
                onTriggered: {
                    FluApp.exit()
                }
            }
        }
        onActivated:  //激活时显示窗口并上升一层窗口
            (reason)=>{
                if(reason === SystemTrayIcon.Trigger){
                    window.show()
                    window.raise()
                    window.requestActivate()
                }
            }
    }

    Timer{
        id:timer_window_hide_delay
        interval: 150
        onTriggered: {
            window.hide()
        }
    }

    FluContentDialog{
        id:dialog_close
        title:"退出"
        message:"确定要退出程序吗？"
        negativeText:"最小化"
        buttonFlags: FluContentDialogType.NegativeButton | FluContentDialogType.NeutralButton | FluContentDialogType.PositiveButton
        onNegativeClicked: {
            system_tray.showMessage("友情提示","InFiniteCV已隐藏至托盘,点击托盘可再次激活窗口");  //调用系统窗口发出消息
            timer_window_hide_delay.restart()
        }
        positiveText:"退出"
        neutralText:"取消"
        onPositiveClicked:{
            FluApp.exit(0)
        }
    }

    Component{
        id:nav_item_right_menu
        FluMenu{
            id:menu
            width: 130
            FluMenuItem{
                text: "在独立窗口打开"
                visible: true
                onClicked: {
                    FluApp.navigate("/pageWindow",{title:modelData.title,url:modelData.url})
                }
            }
        }
    } //右击

    Flipable{  //定义可翻转的类似卡片的部件
        id:flipable
        anchors.fill: parent
        property bool flipped: false
        property real flipAngle: 0
        transform: Rotation {
            id: rotation
            origin.x: flipable.width/2
            origin.y: flipable.height/2
            axis { x: 0; y: 1; z: 0 }
            angle: flipable.flipAngle

        }
        states: State {
            PropertyChanges { target: flipable; flipAngle: 180 }
            when: flipable.flipped
        }
        transitions: Transition {
            NumberAnimation { target: flipable; property: "flipAngle"; duration: 1000 ; easing.type: Easing.OutCubic}
        }
        back: Item{  //背部
            anchors.fill: flipable
            visible: flipable.flipAngle !== 0
            Row{
                id:layout_back_buttons
                z:8
                anchors{
                    top: parent.top
                    left: parent.left
                    topMargin: FluTools.isMacos() ? 20 : 5
                    leftMargin: 5
                }
                FluIconButton{
                    iconSource: FluentIcons.ChromeBack  //表示返回的按钮
                    width: 30
                    height: 30
                    iconSize: 13
                    onClicked: {
                        flipable.flipped = false
                    }
                }
                FluIconButton{
                    iconSource: FluentIcons.Sync
                    width: 30
                    height: 30
                    iconSize: 13
                    onClicked: {
                        loader.reload()  //重新加载资源
                    }
                }
            }
            FluRemoteLoader{  //远程资源加载
                id:loader
                lazy: true
                anchors.fill: parent
                source: "https://zhu-zichu.gitee.io/Qt_163_LieflatPage.qml"
            }
        }
        front: Item{  //正面
            id:page_front
            visible: flipable.flipAngle !== 180
            anchors.fill: flipable
            FluNavigationView{
                property int clickCount: 0
                id:nav_view
                width: parent.width
                height: parent.height
                z:999
                //Stack模式，每次切换都会将页面压入栈中，随着栈的页面增多，消耗的内存也越多，内存消耗多就会卡顿，这时候就需要按返回将页面pop掉，释放内存。该模式可以配合FluPage中的launchMode属性，设置页面的启动模式
                //                pageMode: FluNavigationViewType.Stack
                //NoStack模式，每次切换都会销毁之前的页面然后创建一个新的页面，只需消耗少量内存，可以配合FluViewModel保存页面数据（推荐）
                pageMode: FluNavigationViewType.NoStack
                items: ItemsOriginal
                footerItems:ItemsFooter
                topPadding:{
                    if(window.useSystemAppBar){
                        return 0
                    }
                    return FluTools.isMacos() ? 20 : 0
                }
                displayMode:viewmodel_settings.displayMode
                logo: "qrc:/example/res/image/favicon.ico" //定义图标
                title:"InFiniteUI"
                onLogoClicked:{
                    clickCount += 1
                    showSuccess("点击%1次".arg(clickCount))
                    if(clickCount === 5){
                        loader.reload()
                        flipable.flipped = true
                        clickCount = 0
                    }
                }
                autoSuggestBox:FluAutoSuggestBox{
                    iconSource: FluentIcons.Search
                    items: ItemsOriginal.getSearchData()
                    placeholderText: Lang.search
                    onItemClicked:
                        (data)=>{
                            ItemsOriginal.startPageByItem(data)
                        }
                }
                Component.onCompleted: {
                    ItemsOriginal.navigationView = nav_view
                    ItemsOriginal.paneItemMenu = nav_item_right_menu
                    ItemsFooter.navigationView = nav_view
                    ItemsFooter.paneItemMenu = nav_item_right_menu
                    setCurrentIndex(0)
                }
            }
        }
    }

    Component{
        id:com_reveal
        CircularReveal{
            id:reveal
            target:window.layoutContainer()
            anchors.fill: parent
            onAnimationFinished:{
                //动画结束后释放资源
                loader_reveal.sourceComponent = undefined
            }
            onImageChanged: {
                changeDark()
            }
        }
    }

    FluLoader{
        id:loader_reveal
        anchors.fill: parent
    }

    function distance(x1,y1,x2,y2){
        return Math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
    }

    function handleDarkChanged(button){
        if(!FluTheme.enableAnimation || window.fitsAppBarWindows === false){
            changeDark()
        }else{
            if(loader_reveal.sourceComponent){
                return
            }
            loader_reveal.sourceComponent = com_reveal
            var target = window.layoutContainer()
            var pos = button.mapToItem(target,0,0)
            var mouseX = pos.x
            var mouseY = pos.y
            var radius = Math.max(distance(mouseX,mouseY,0,0),distance(mouseX,mouseY,target.width,0),distance(mouseX,mouseY,0,target.height),distance(mouseX,mouseY,target.width,target.height))
            var reveal = loader_reveal.item
            reveal.start(reveal.width*Screen.devicePixelRatio,reveal.height*Screen.devicePixelRatio,Qt.point(mouseX,mouseY),radius)
        }
    }

    function changeDark(){
        if(FluTheme.dark){
            FluTheme.darkMode = FluThemeType.Light
        }else{
            FluTheme.darkMode = FluThemeType.Dark
        }
    }

    Shortcut {
        sequence: "F5"
        context: Qt.WindowShortcut
        onActivated: {
            if(flipable.flipped){
                loader.reload()
            }
        }
    }

    Shortcut {
        sequence: "F6"
        context: Qt.WindowShortcut
        onActivated: {
            tour.open()
        }
    }

    FluTour{
        id:tour
        steps:{
            var data = []
            if(!window.useSystemAppBar){
                data.push({title:"夜间模式",description: "这里可以切换夜间模式.",target:()=>appBar.darkButton()})
            }
            data.push({title:"隐藏彩蛋",description: "多点几下试试！！",target:()=>nav_view.logoButton()})
            return data
        }
    }

    FpsItem{
        id:fps_item
    }

    FluText{
        text:"fps %1".arg(fps_item.fps)
        opacity: 0.3
        anchors{
            bottom: parent.bottom
            right: parent.right
            bottomMargin: 5
            rightMargin: 5
        }
    }

    FluContentDialog{
        property string newVerson
        property string body
        id:dialog_update
        title:"升级提示"
        message:"InFiniteUI目前最新版本 "+ newVerson +" -- 当前应用版本 "+AppInfo.version+" \n现在是否去下载新版本？\n\n更新内容：\n"+body
        buttonFlags: FluContentDialogType.NegativeButton | FluContentDialogType.PositiveButton
        negativeText: "取消"
        positiveText:"确定"
        onPositiveClicked:{
           // Qt.openUrlExternally("https://github.com/zhuzichu520/FluentUI/releases/latest")
        }
    }

    FluNetworkCallable{
        id:callable
        property bool silent: true
        onStart: {
            console.debug("satrt check update...")
        }
        onFinish: {
            console.debug("check update finish")
            FluEventBus.post("checkUpdateFinish");
        }
        onSuccess:
            (result)=>{
                var data = JSON.parse(result)
                console.debug("current version "+AppInfo.version)
                console.debug("new version "+data.tag_name)
                if(data.tag_name !== AppInfo.version){
                    dialog_update.newVerson =  data.tag_name
                    dialog_update.body = data.body
                    dialog_update.open()
                }else{
                    if(!silent){
                        showInfo("当前版本已经是最新版")
                    }
                }
            }
        onError:
            (status,errorString)=>{
                if(!silent){
                    showError("网络异常!")
                }
                console.debug(status+";"+errorString)
            }
    }

    function checkUpdate(silent){
        callable.silent = silent
        //FluNetwork.get("https://api.github.com/repos/zhuzichu520/FluentUI/releases/latest")
        //.go(callable)
    }

}

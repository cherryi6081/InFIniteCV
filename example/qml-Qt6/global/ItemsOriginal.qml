pragma Singleton

import QtQuick
import FluentUI

FluObject{

    property var navigationView
    property var paneItemMenu

    function rename(item, newName){
        if(newName && newName.trim().length>0){
            item.title = newName;
        }
    }

    FluPaneItem{
        id:item_home
        count: 9
        title:Lang.home
        menuDelegate: paneItemMenu
        infoBadge:FluBadge{
            count: item_home.count
        }
        icon:FluentIcons.Home
        url:"qrc:/example/qml/page/T_Home.qml"
        onTap:{
            if(navigationView.getCurrentUrl()){
                item_home.count = 0
            }
            navigationView.push(url)
        }
    }

   /* FluPaneItemExpander{  ///666 扩展下拉选项可选
        title:"PaneItemExpander Disabled"
        iconVisible: true
        disabled: true
    }*/

    FluPaneItemExpander{
        id:item_expander_basic_functions
        title:Lang.basic_functions
        icon:FluentIcons.CheckboxComposite
        FluPaneItem{  //按钮
            id:item_button
            count:99  //消息冒泡次数
            infoBadge:FluBadge{ //消息冒泡
                count: item_button.count
            }
            title:"Buttons"
            menuDelegate: paneItemMenu
            extra:({image:"qrc:/example/res/image/control/Button.png",recentlyAdded:true,desc:"An application based on recognizing faces, using C++ and TensorRT to accelerate inference algorithm generation."})
            url:"qrc:/example/qml/page/T_Buttons.qml"
            onTap:{
                item_button.count = 0
                navigationView.push(url)
            }
        }
        FluPaneItem{  //复选框
            id:item_checkbox
            title:"Checkboxes"
            menuDelegate: paneItemMenu
            count: 99
            infoBadge:FluBadge{
                count: item_checkbox.count
                color: Qt.rgba(82/255,196/255,26/255,1)
            }
            extra:({image:"qrc:/example/res/image/control/Canvas.png",recentlyAdded:true,desc:"A control that responds to user input and raisesa Click event."})
            url:"qrc:/example/qml/page/T_Checkboxes.qml"
            onTap:{
                item_checkbox.count = 0
                navigationView.push(url)
            }
        }
        FluPaneItem{  //转换键
            id:item_toggle
            title:"Toggle switches"
            menuDelegate: paneItemMenu
            count: 5
            infoBadge:FluBadge{
                count: item_toggle.count
                color: Qt.rgba(82/255,196/255,26/255,1)
            }
            extra:({image:"qrc:/example/res/image/control/Canvas.png",recentlyUpdated:true,desc:"A control that responds to user input and raisesa Click event."})
            url:"qrc:/example/qml/page/T_Toggles.qml"
            onTap:{
                item_toggle.count = 0
                navigationView.push(url)
            }
        }
        FluPaneItem{  //加载条
            id:item_loader
            title:"Loaders"
            menuDelegate: paneItemMenu
            count: 5
            infoBadge:FluBadge{
                count: item_loader.count
                color: Qt.rgba(82/255,196/255,26/255,1)
            }
            extra:({image:"qrc:/example/res/image/control/Canvas.png",recentlyUpdated:true,desc:"A control that responds to user input and raisesa Click event."})
            url:"qrc:/example/qml/page/T_Loaders.qml"
            onTap:{
                item_loader.count = 0
                navigationView.push(url)
            }
        }
        FluPaneItem{  //输入
            id:item_input
            title:"Inputs"
            menuDelegate: paneItemMenu
            count: 5
            infoBadge:FluBadge{
                count: item_input.count
                color: Qt.rgba(82/255,196/255,26/255,1)
            }
            extra:({image:"qrc:/example/res/image/control/Canvas.png",recentlyUpdated:true,desc:"A control that responds to user input and raisesa Click event."})
            url:"qrc:/example/qml/page/T_Inputs.qml"
            onTap:{
                item_input.count = 0
                navigationView.push(url)
            }
        }
        FluPaneItem{  //单选按钮
            id:item_radiobutton
            title:"Radio Buttons"
            menuDelegate: paneItemMenu
            count: 5
            infoBadge:FluBadge{
                count: item_radiobutton.count
                color: Qt.rgba(82/255,196/255,26/255,1)
            }
            extra:({image:"qrc:/example/res/image/control/Canvas.png",recentlyUpdated:true,desc:"A control that responds to user input and raisesa Click event."})
            url:"qrc:/example/qml/page/T_RadioButtons.qml"
            onTap:{
                item_radiobutton.count = 0
                navigationView.push(url)
            }
        }
        FluPaneItem{  //表单
            id:item_form
            title:"Form"
            menuDelegate: paneItemMenu
            count: 5
            infoBadge:FluBadge{
                count: item_form.count
                color: Qt.rgba(82/255,196/255,26/255,1)
            }
            extra:({image:"qrc:/example/res/image/control/Canvas.png",recentlyUpdated:true,desc:"A control that responds to user input and raisesa Click event."})
            url:"qrc:/example/qml/page/T_Forms.qml"
            onTap:{
                item_form.count = 0
                navigationView.push(url)
            }
        }
        FluPaneItem{  //提示按键
            id:item_tooltip
            title:"Tooltip"
            menuDelegate: paneItemMenu
            count: 5
            infoBadge:FluBadge{
                count: item_tooltip.count
                color: Qt.rgba(82/255,196/255,26/255,1)
            }
            extra:({image:"qrc:/example/res/image/control/Canvas.png",recentlyUpdated:true,desc:"A control that responds to user input and raisesa Click event."})
            url:"qrc:/example/qml/page/T_Tooltips.qml"
            onTap:{
                item_tooltip.count = 0
                navigationView.push(url)
            }
        }
    }
    FluPaneItemExpander{
        title:Lang.theming
        icon:FluentIcons.Brightness
        FluPaneItem{
            title:"Theme"
            menuDelegate: paneItemMenu
            url:"qrc:/example/qml/page/T_Theme.qml"
            extra:({image:"qrc:/example/res/image/control/ColorPicker.png",recentlyUpdated:true,desc:"An applicable theme that can be adjusted."})
            onTap:{ navigationView.push(url) }
        }
    }
    FluPaneItem{
        id:item_qrcode
        count: 9
        title:Lang.other
        menuDelegate: paneItemMenu
        infoBadge:FluBadge{
            count: item_qrcode.count
        }
        icon:FluentIcons.DialShape3
        url:"qrc:/example/qml/page/T_QRCode.qml"
        onTap:{
            if(navigationView.getCurrentUrl()){
                item_qrcode.count = 0
            }
            navigationView.push(url)
        }
    }


    function getRecentlyAddedData(){
        var arr = []
        var items = navigationView.getItems();
        for(var i=0;i<items.length;i++){
            var item = items[i]
            if(item instanceof FluPaneItem && item.extra && item.extra.recentlyAdded){
                arr.push(item)
            }
        }
        arr.sort(function(o1,o2){ return o2.extra.order-o1.extra.order })
        return arr
    }

    function getRecentlyUpdatedData(){
        var arr = []
        var items = navigationView.getItems();
        for(var i=0;i<items.length;i++){
            var item = items[i]
            if(item instanceof FluPaneItem && item.extra && item.extra.recentlyUpdated){
                arr.push(item)
            }
        }
        return arr
    }

    function getSearchData(){
        if(!navigationView){
            return
        }
        var arr = []
        var items = navigationView.getItems();
        for(var i=0;i<items.length;i++){
            var item = items[i]
            if(item instanceof FluPaneItem){
                if (item.parent instanceof FluPaneItemExpander)
                {
                    arr.push({title:`${item.parent.title} -> ${item.title}`,key:item.key})
                }
                else
                    arr.push({title:item.title,key:item.key})
            }
        }
        return arr
    }

    function startPageByItem(data){
        navigationView.startPageByItem(data)
    }

}

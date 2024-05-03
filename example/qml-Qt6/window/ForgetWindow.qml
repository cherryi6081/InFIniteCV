import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import Qt.labs.platform
import QtQuick.LocalStorage 2.15
import FluentUI
import "qrc:///example/qml/component"
import "qrc:///example/qml/viewmodel"

FluWindow{
    id:forget_page
    title: "找回密码"
    width:680
    height:560
    //minimumWidth: 300
    //minimumHeight: 200
    launchMode:FluWindowType.SingleTask
    fixSize: true
    ColumnLayout{
        //spacing:5
        anchors{
            left: parent.left
            right: parent.right
            verticalCenter: parent.verticalCenter
            top: parent.top
        }
        FluText{
            id:header
            text: "Retrieve password | Page"
            //anchors.centerIn: parent
            Layout.alignment: Qt.AlignHCenter
            //bottomPadding: 20
            font: FluTextStyle.TitleLarge
        }
        Row{
            Layout.alignment: Qt.AlignHCenter
            FluIcon{
                iconSource:FluentIcons.PenWorkspaceMirrored
            }
            spacing: 5
            FluTextBox{
                id:user_name
                width: 200
                //anchors.centerIn: parent
                Layout.alignment: Qt.AlignHCenter
                placeholderText:"请输入用户名"
                Layout.preferredWidth: 150
                text:viewModel.user_name
                onTextChanged: {
                    viewModel.user_name = text
                }
            }
        }
        Row{
            Layout.alignment: Qt.AlignHCenter
            FluIcon{
                iconSource:FluentIcons.Mail
            }
            spacing: 5
            FluTextBox{
                id:user_email
                width: 200
                //anchors.centerIn: parent
                Layout.alignment: Qt.AlignHCenter
                placeholderText:"请输入邮箱号"
                Layout.preferredWidth: 150
                text:viewModel.user_email
                onTextChanged: {
                    viewModel.user_email = text
                }
            }
        }
        Row{
            Layout.alignment: Qt.AlignHCenter
            spacing: 5
            FluIcon{
                iconSource:FluentIcons.Unlock
            }
            FluPasswordBox{
                id:user_password
                placeholderText:"重置密码"
                width: 200
                //anchors.centerIn: parent
                Layout.alignment: Qt.AlignHCenter
                Layout.preferredWidth: 150
                text:viewModel.user_password1
                onTextChanged: {
                    viewModel.user_password1= text
                }
            }
        }
        Row{
            Layout.alignment: Qt.AlignHCenter
            spacing: 5
            FluIcon{
                iconSource:FluentIcons.Unlock
            }
            FluPasswordBox{
                id:user_password1
                placeholderText:"再次确认密码"
                width: 200
                //anchors.centerIn: parent
                Layout.alignment: Qt.AlignHCenter
                Layout.preferredWidth: 150
                text:viewModel.user_password2
                onTextChanged: {
                    viewModel.user_password2= text
                }
            }
        }
        Row{
            Layout.alignment: Qt.AlignHCenter
            spacing: 30
            FluCaptcha{
                id:captcha
                //ignoreCase:switch_case.checked
                MouseArea{
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        captcha.refresh()
                    }
                }
            }
            FluTextButton{
                text:"Refresh"
                font:FluTextStyle.BodyStrong
                //Layout.topMargin: 20
                onClicked: {
                    captcha.refresh()
                }
            }
        }
        Row{
            Layout.alignment: Qt.AlignHCenter
            spacing:5
            FluIcon{
                iconSource:FluentIcons.Send
            }
            FluTextBox{
                Layout.alignment: Qt.AlignHCenter
                id:text_box
                width: 200
                placeholderText: "请输入验证码"
                Layout.preferredWidth: 100
            }
        }
        Row{
            Layout.alignment: Qt.AlignHCenter
            topPadding: 20
            spacing:80
            FluFilledButton{
                id:btn_accept
                width: 100
                height: 50
                text:"Accpet"
                font: FluTextStyle.BodyStrong
                onClicked: {
                    //数据库检查
                    //checked = !checked
                    if(viewModel.user_name===""||viewModel.user_email===""||viewModel.user_password1===""||viewModel.user_password2===""){
                        showWarning("待输入项不能为空！")
                        return;
                    }
                    if(viewModel.user_password1===viewModel.user_password2)
                    {
                    var success =  captcha.verify(text_box.text)
                    if(success){
                        showInfo("验证码正确")
                        if(isExist(viewModel.user_name,viewModel.user_email)===true){
                        updateUsersInfo(viewModel.user_name,viewModel.user_email,viewModel.user_password1)
                    if(isSamePassword(viewModel.user_name,viewModel.user_email,viewModel.user_password1)===true)showWarning("您重置的密码与此前一致，确认要这么做吗？")
                        showSuccess("Reset password Successfully!")
                        blockTimer.start()
                        }else{
                            showError("您并不存在这样的账户，是否前往注册？")
                        }
                            }else{
                        text_box.text=""
                        showError("验证码错误，请重新输入")
                    }
                  }else{
                        showError("密码不一致，请重新确认密码")
                    }

                }
            }
            /*FluProgressButton{
                text:"Progress Button"
                onClicked: {

                }
            }*/
            FluFilledButton{
                id:btn_cancel
                text:"Cancel"
                width: 100
                height: 50
                font: FluTextStyle.BodyStrong
                onClicked: {
                    //checked = !checked
                    viewModel.user_password1=""
                    viewModel.user_email=""
                    viewModel.user_name=""
                    viewModel.user_password2=""
                    text_box.text=""
                    FluApp.navigate("/signin");
                    forget_page.visible=false;
                }
            }
        }

    }
    TextBoxViewModel{
        id:viewModel
    }
    Timer{
            id: blockTimer
            interval: 2000  // 阻塞时间，单位为毫秒，这里设置为2000ms即2秒
            onTriggered: {
                // 这里是阻塞时间后要执行的代码
                viewModel.user_password1=""
                viewModel.user_email=""
                viewModel.user_name=""
                viewModel.user_password2=""
                text_box.text=""
                FluApp.navigate("/signin");
                forget_page.visible=false;
                console.log("已经阻塞了2秒钟。")
            }
    }
    function isSamePassword(username,email,newpassword){
        var flag=false
        var db=LocalStorage.openDatabaseSync("MyStorage", "1.0", "StorageDatabase", 100000)
        db.transaction(function(tx) {
            var result = tx.executeSql('SELECT * FROM user_table')
            for(var i = 0; i < result.rows.length; i++) {
                    //console.log("user: "+result.rows.item(i).username+" email:"+result.rows.item(i).email+" password: "+result.rows.item(i).password+"\n");
                if(result.rows.item(i).username===username&&result.rows.item(i).email===email){
                    if(result.rows.item(i).password===newpassword){
                        console.log("the password is same");
                        flag=true;
                    }
                }
            }
            })
        return flag
    }
    function updateUsersInfo(username,email,newpassword) {  //个人邮箱作为关键字
        //var users = []
        var db=LocalStorage.openDatabaseSync("MyStorage", "1.0", "StorageDatabase", 100000)
        /*db.transaction(function(tx) {
            var result = tx.executeSql('SELECT * FROM user_table')
            for(var i = 0; i < result.rows.length; i++) {
                    //console.log("user: "+result.rows.item(i).username+" email:"+result.rows.item(i).email+" password: "+result.rows.item(i).password+"\n");
                if(result.rows.item(i).username===username&&result.rows.item(i).email===email){
                    if(result.rows.item(i).password===newpassword)
                        console.log("the password is same");
                        //flag=true;
                }
            }
            })*/
        db.transaction(function(tx) {
            tx.executeSql('UPDATE user_table SET password = ? WHERE email = ?', [newpassword, email]);
        });
    }
    function isExist(username,email){
        var flag=false
        var db=LocalStorage.openDatabaseSync("MyStorage", "1.0", "StorageDatabase", 100000)
        db.transaction(function(tx) {
            var result = tx.executeSql('SELECT * FROM user_table')
            for(var i = 0; i < result.rows.length; i++) {
                    //console.log("user: "+result.rows.item(i).username+" email:"+result.rows.item(i).email+" password: "+result.rows.item(i).password+"\n");
                if(result.rows.item(i).username===username&&result.rows.item(i).email===email){
                        flag=true;
                    }
            }
            })
        return flag
    }
}

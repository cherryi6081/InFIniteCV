import QtQuick
import QtCore
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import Qt.labs.platform
//import Qt.labs.settings 1.0
import QtQuick.LocalStorage 2.15
import QtMultimedia
import FluentUI
import "qrc:///example/qml/component"
import "qrc:///example/qml/viewmodel"

FluWindow{
    id:sign_in
    title: "登录"
    width:720
    height:420
    //minimumWidth: 300
    //minimumHeight: 200
    launchMode:FluWindowType.SingleTask
    fixSize: true
    //property bool rememberflag: false
    /*onInitArgument:
        (argument)=>{
            user_name.updateText(argument.username)
            user_password.focus =  true
        }
   /* FluArea{
        anchors.fill: parent
        Layout.fillWidth: true
    }*/Settings {
        id:setting
        property alias rememberState: check_box.checked
        property alias userText: user_name.text
        property alias userPassword: user_password.text
        //property alias geometry: mainWindow.geometry
    }
    MediaPlayer{
        id: mediaPlayer
        source: "qrc:/example/res/image/LoadingVedio.mp4"
        //autoPlay: true
        videoOutput:videoOutput
        audioOutput: AudioOutput{}
        loops: 1 // 设置视频播放次数为1
        onMediaStatusChanged: {
            if (mediaPlayer.playbackState === MediaPlayer.StoppedState) {
                console.log("视频播放已停止，已播放完毕。")
            }
            // This is available in all editors.
        }
    }
    VideoOutput{
        id:videoOutput
        anchors.fill: parent
        //source: mediaPlayer
        fillMode: VideoOutput.Stretch
        MouseArea{
            anchors.fill: parent
            onClicked: {
                mediaPlayer.stop()
                videoOutput.visible=false
                fluarea.visible=true
                layout.visible=true
                //mediaPlayer.deleteLater()
            }
        }
    }
                ColumnLayout{
                    //leftPadding: 250
                    //topPadding: 200
                   // Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    id:layout
                    visible: false  //一开始为不可见
                    FluArea{
                        id:fluarea
                        Layout.fillWidth: true
                        visible: false
                    }
                    spacing:10
                    anchors{
                        left: parent.left
                        right: parent.right
                        verticalCenter: parent.verticalCenter
                    }
                    FluText{
                        id:header
                        text: "Sign | in"
                        //anchors.centerIn: parent
                        Layout.alignment: Qt.AlignHCenter
                        bottomPadding:50
                        font: FluTextStyle.Display
                    }
                    Row{
                        Layout.alignment: Qt.AlignHCenter
                        FluIcon{
                            iconSource:FluentIcons.Contact
                        }
                        spacing: 5
                        FluTextBox{
                            id:user_name
                            width: 200
                            //anchors.centerIn: parent
                            Layout.alignment: Qt.AlignHCenter
                            placeholderText:"用户名"
                            Layout.preferredWidth: 150
                            text:viewModel.user_name
                            onTextChanged: {
                                check_user.running=false
                                viewModel.user_name= text
                            }
                        }
                    }
                    Row{
                        Layout.alignment: Qt.AlignHCenter
                        spacing: 3
                        FluIcon{
                            iconSource:FluentIcons.DynamicLock
                        }
                        FluPasswordBox{
                            id:user_password
                            placeholderText:"密码"
                            width: 200
                            //anchors.centerIn: parent
                            Layout.alignment: Qt.AlignHCenter
                            Layout.preferredWidth: 150
                            text:viewModel.user_password
                            onTextChanged: {
                                check_user.running=false
                                viewModel.user_password= text
                            }
                        }
                }
                    FluText{
                        id:forget_message
                        Layout.alignment: Qt.AlignRight
                        rightPadding: 250
                        text:"Forgot Password?"
                        color: "blue"
                        font:FluTextStyle.Caption
                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true // 启用悬停

                            onEntered: forget_message.color = "orange" // 鼠标悬停时改变文本颜色
                            onExited: forget_message.color = "blue" // 鼠标离开时恢复原色
                            cursorShape: forget_message.enabled?Qt.PointingHandCursor:"ForbiddenCursor"
                            onClicked: {
                                check_user.running=true
                                FluApp.navigate("/forget")
                                sign_in.visible=false
                            }
                        }
                }
                    FluCheckBox{
                        //disabled:true
                        //Layout.alignment: Qt.AlignHCenter
                        id:check_box
                        leftPadding: 245
                        text:"remember me"
                        font: FluTextStyle.Body
                        onClicked: {}
                    }
                    Row{
                        Layout.alignment: Qt.AlignHCenter
                        topPadding: 20
                        spacing:50
                        FluFilledButton{
                            width: 100
                            height: 50
                            text:"Accept"
                            font: FluTextStyle.BodyStrong
                            onClicked: {
                                if(findUsers(viewModel.user_name,viewModel.user_password)===true){
                                    showSuccess("Log in Successfully!");
                                    blockTimer.start();
                                }else if(isExist(viewModel.user_name)===true){
                                    showError("密码错误！请重新输入")
                                    viewModel.user_password=""
                            }else{
                                    showWarning("不存在这样的账户！请重新注册")
                                }
                            }
                        }
                        FluFilledButton{
                            text:"Register"
                            width: 100
                            height: 50
                            font: FluTextStyle.BodyStrong
                            onClicked: {
                                check_user.running=true
                                FluApp.navigate("/register");
                                //qq.visible=true
                                sign_in.visible=false
                            }
                        }
            }
    }
            Timer{
                    id: blockTimer
                    interval: 800  // 阻塞时间，单位为毫秒，这里设置为2000ms即2秒
                    onTriggered: {
                        // 这里是阻塞时间后要执行的代码
                        /*if(check_box.checked===true){
                            rememberUsersInfo(viewModel.user_name,viewModel.user_password)
                           showInfo("已记下本次账户信息")
                        }*/
                        FluApp.navigate("/");
                        sign_in.visible=false;
                        console.log("已经阻塞了0.8秒钟。")
                        }
            }
            TextBoxViewModel{
                id:viewModel
            }
                Timer{
                    id:check_user
                    interval: 200  // 设置间隔时间为200毫秒（秒）
                    repeat: true    // 设置定时器重复
                    running: true   // 设置定时器开始运行

                    onTriggered: {
                        //记住密码没勾选时 将自动读取上一次的账户信息
                        if(check_box.checked===false){
                        user_name.text=rememberUser()
                        //user_password.text=rememberPassword()
                        }
                    }
                }
                Timer{
                    id:mediaBlock
                    interval: 2900
                    repeat: false
                    onTriggered: {
                        videoOutput.visible=false
                        fluarea.visible=true
                        layout.visible=true
                        console.log("已阻塞2.9秒钟\n")
                    }
                }
     Component.onCompleted: {
                    mediaPlayer.play()
                    mediaBlock.start()
                    if(setting.rememberState===false){
                        user_name.text=""
                        user_password.text=""
                    }
                    check_user.start()
                }
                function findUsers(username,userpassword) {  //个人邮箱作为关键字
                    //var users = []
                    var db=LocalStorage.openDatabaseSync("MyStorage", "1.0", "StorageDatabase", 100000)
                    var flag=false
                    db.transaction(function(tx) {
                        var result = tx.executeSql('SELECT * FROM user_table')
                        for(var i = 0; i < result.rows.length; i++) {
                                console.log("user: "+result.rows.item(i).username+" email:"+result.rows.item(i).email+" password: "+result.rows.item(i).password+"\n");
                            if(result.rows.item(i).username===username&&result.rows.item(i).password===userpassword){
                                    console.log("find success!");
                                    flag=true;
                            }
                        }
                        })
                    return flag
                }
                function isExist(username){
                    var db=LocalStorage.openDatabaseSync("MyStorage", "1.0", "StorageDatabase", 100000);
                    var flag=false
                    db.transaction(function(tx) {
                        var result = tx.executeSql('SELECT * FROM user_table')
                        for(var i = 0; i < result.rows.length; i++) {
                            if(result.rows.item(i).username===username){
                                    console.log("find username success!");
                                    flag=true;
                            }
                        }
                        })
                    return flag
                }
                function rememberUser(){
                    console.log("start!\n")
                    let str
                    var db = LocalStorage.openDatabaseSync("MyStorage", "1.0", "StorageDatabase", 100000)
                    db.transaction(function(tx) {
                        var result = tx.executeSql('SELECT * FROM user_table')
                        var length=result.rows.length
                        str=result.rows.item(length-1).username
                        })
                        return str

            }
                /*function rememberPassword(){
                    let str
                    var db = LocalStorage.openDatabaseSync("MyStorage", "1.0", "StorageDatabase", 100000)
                    db.transaction(function(tx) {
                        var result = tx.executeSql('SELECT * FROM user_table')
                        var length=result.rows.length
                        str=result.rows.item(length-1).password
                    })
                    return str
                }*/

}

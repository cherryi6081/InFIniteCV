import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import Qt.labs.platform
import QtQuick.LocalStorage 2.15
import FluentUI
//import "storage.js"as Storage
import "qrc:///example/qml/component"
import "qrc:///example/qml/viewmodel"

FluWindow{
    id:register_page
    title: "注册"
    width:720
    height:420
    //minimumWidth: 300
    //minimumHeight: 200
    launchMode:FluWindowType.SingleTask
    fixSize: true
   // signal sendMessage(String username,String userpassword)
    //signal RegisterSucess(String username,String userpassword)
    /*LocalStorage{
        id: storage
        databaseName: "userdb"
        version: 1
    }*/
    ColumnLayout{
        spacing:20
        anchors{
            left: parent.left
            right: parent.right
            verticalCenter: parent.verticalCenter
        }
        FluText{
            id:header
            text: "Register | Page"
            //anchors.centerIn: parent
            Layout.alignment: Qt.AlignHCenter
            bottomPadding:20
            font: FluTextStyle.TitleLarge
        }
        Row{
            Layout.alignment: Qt.AlignHCenter
            FluIcon{
                iconSource:FluentIcons.Dial1
            }
            spacing: 8
            FluTextBox{
                id:user_name
                width: 200
                //anchors.centerIn: parent
                Layout.alignment: Qt.AlignHCenter
                placeholderText:"请输入用户名"
                Layout.preferredWidth: 150
                text:viewModel.user_name1
                onTextChanged: {
                    viewModel.user_name1 = text
                }
            }
        }
        Row{
            Layout.alignment: Qt.AlignHCenter
            FluIcon{
                iconSource:FluentIcons.Dial2
            }
            spacing: 8
            FluTextBox{
                id:user_email
                width: 200
                //anchors.centerIn: parent
                Layout.alignment: Qt.AlignHCenter
                placeholderText:"请输入邮箱号"
                Layout.preferredWidth: 150
                text:viewModel.user_email1
                onTextChanged: {
                    viewModel.user_email1 = text
                }
            }
        }
        Row{
            Layout.alignment: Qt.AlignHCenter
            spacing: 8
            FluIcon{
                iconSource:FluentIcons.Dial3
            }
            FluPasswordBox{
                id:user_password1
                placeholderText:"请输入密码"
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
            spacing: 8
            FluIcon{
                iconSource:FluentIcons.Dial4
            }
            FluPasswordBox{
                id:user_password2
                placeholderText:"请再次确认密码"
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
            //topPadding: 20
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
                    var checked=false
                    if(viewModel.user_name1===""||viewModel.user_email1===""||viewModel.user_password1===""||viewModel.user_password2===""){
                        showWarning("待输入项不能为空！")
                        return;
                    }
                    if(viewModel.user_password1===viewModel.user_password2){
                        if(addUser(viewModel.user_name1,viewModel.user_password1,viewModel.user_email1)===true){  //注册成功
                        showSuccess("Register Successfully!")
                        blockTimer.start()
                        }else{
                            showInfo("注册失败",0,"这可能是由于您已注册过的原因")
                            }
                        }else{
                        showError("密码不一致，请重新确认密码")
                        viewModel.user_password1=""
                        viewModel.user_password2=""
                    }
                }
            }
            /*FluProgressButton{
                text:"Progress Button"
                onClicked: {

                }
            }*/
            FluFilledButton{
                id:btn_canceluser_email
                text:"Cancel"
                width: 100
                height: 50
                font: FluTextStyle.BodyStrong
                onClicked: {
                    //checked = !checked
                    viewModel.user_password1=""
                    viewModel.user_email1=""
                    viewModel.user_name1=""
                    viewModel.user_password2=""
                    FluApp.navigate("/signin");
                    register_page.visible=false;
                }
            }
        }
        /*FluToggleButton{
FluProgressButton{
    text:"Progress Button"
    onClicked: {

    }
}
        }*/
    }
    Timer{
            id: blockTimer
            interval: 2000  // 阻塞时间，单位为毫秒，这里设置为2000ms即2秒
            onTriggered: {
                // 这里是阻塞时间后要执行的代码
               // register_page.sendMessage(viewModel.user_name1,viewModel.user_password1)
                FluApp.navigate("/signin");
                showInfo("已将登录信息同步")
                //SigninWindow.setUsersInfo(viewModel.user_name1,viewModel.user_email1)
                register_page.visible=false;
                console.log("已经阻塞了2秒钟。")
            }
    }
    TextBoxViewModel{
        id:viewModel
    }

    function initialize() {
    var db = LocalStorage.openDatabaseSync("MyStorage", "1.0", "StorageDatabase", 100000)
    db.transaction(function(tx) {
                tx.executeSql('CREATE TABLE IF NOT EXISTS user_table (username TEXT, password TEXT,email TEXT PRIMARY KEY)')
        });
    db.transaction(function(tx) {
        var result = tx.executeSql('SELECT * FROM user_table')
        for(var i = 0; i < result.rows.length; i++) {
                                    console.log("user: "+result.rows.item(i).username+" email:"+result.rows.item(i).email+" password: "+result.rows.item(i).password+"\n");
            }
         });
        /*if(findUsers("1959231664@qq.com")===true){
            console.log("find success!");
        }else{
            console.log("error!");
        }*/
}

    function findUsers(useremail) {  //个人邮箱作为关键字
        //var users = []
        var db=LocalStorage.openDatabaseSync("MyStorage", "1.0", "StorageDatabase", 100000)
        var flag=false
        db.transaction(function(tx) {
            var result = tx.executeSql('SELECT * FROM user_table')
            for(var i = 0; i < result.rows.length; i++) {
                    console.log("user: "+result.rows.item(i).username+" email:"+result.rows.item(i).email+" password: "+result.rows.item(i).password+"\n");
                if(result.rows.item(i).email===useremail){
                        console.log("find success!");
                        flag=true;
                }
            }
            })
        return flag
    }

    function addUser(username,password,email) {
        var db=LocalStorage.openDatabaseSync("MyStorage", "1.0", "StorageDatabase", 100000)
        if(findUsers(email)===true){return false}  //已经注册
            else
        {
            db.transaction(function(tx) {
            tx.executeSql('INSERT INTO user_table (username, password,email) VALUES (?, ?, ?)', [username, password,email])
        });
        }
        return true
    }
    Component.onCompleted: {
        initialize()
    }
}

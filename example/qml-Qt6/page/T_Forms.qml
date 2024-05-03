import QtQuick
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Controls.Basic
import QtWebView
import FluentUI
import "qrc:///example/qml/component"

FluScrollablePage{

    title:"Form"

    FluText{
        Layout.topMargin: 20
        text:"支持Tab键切换焦点，空格键执行点击事件"
    }
    FluArea{
        Layout.fillWidth: true
        height: 310
        paddings: 10
        Layout.topMargin: 20
            WebView {
                anchors.fill: parent
                anchors{
                    verticalCenter: parent.verticalCenter
                    left: parent.left
                }
                url: "qrc:///example/res/html/Forms/Form by Yaya12085.html" // 设置要加载的网页URL
            }
                        FluTextButton{
        text:"获取html"
        onClicked: {
            Qt.openUrlExternally("")
        }
        anchors{
            right: parent.right
            verticalCenter: parent.verticalCenter
        }
    }
    }
    CodeExpander{
        headerText: "HTML Source"
        Layout.fillWidth: true
        Layout.topMargin: -1
        code:'《form class="form">
  《span class="title">Subscribe to our newsletter.《/span>
  《p class="description">Nostrud amet eu ullamco nisi aute in ad minim nostrud adipisicing velit quis. Duis tempor incididunt dolore.《/p>
  《div>
    《input placeholder="Enter your email" type="email" name="email" id="email-address">
    《button type="submit">Subscribe《/button>
  《/div>
《/form>'
    }
        CodeExpander{
            headerText: "CSS Source"
            Layout.fillWidth: true
            Layout.topMargin: -1
            code:'.form {
  display: flex;
  flex-direction: column;
  background: #606c88;
  background: -webkit-linear-gradient(to right, #3f4c6b, #606c88);
  background: linear-gradient(to right, #3f4c6b, #606c88);
  padding: 20px;
  border-radius: 10px;
  max-width: 350px;
}

.title {
  font-size: 2rem;
  line-height: 2rem;
  font-weight: 700;
  letter-spacing: -0.025em;
  color: #fff;
}

.description {
  line-height: 1.5rem;
  font-size: 1rem;
  margin-top: 1rem;
  color: rgb(209 213 219);
}

.form div {
  display: flex;
  max-width: 28rem;
  margin-top: 1rem;
  column-gap: 0.5rem;
}

.form div input {
  outline: none;
  line-height: 1.5rem;
  font-size: 0.875rem;
  color: rgb(255 255 255 );
  padding: 0.5rem 0.875rem;
  background-color: rgb(255 255 255 / 0.05);
  border: 1px solid rgba(253, 253, 253, 0.363);
  border-radius: 0.375rem;
  flex: 1 1 auto;
}

.form div input::placeholder {
  color: rgb(216, 212, 212);
}

.form div input:focus {
  border: 1px solid rgb(99 102 241);
}

.form div button {
  color: #fff;
  font-weight: 600;
  font-size: 0.875rem;
  line-height: 1.25rem;
  padding: 0.625rem 0.875rem;
  background-color: rgb(99 102 241);
  border-radius: 0.375rem;
  border: none;
  outline: none;
}'
        }
        FluArea{
            Layout.fillWidth: true
            height: 380
            paddings: 10
            Layout.topMargin: 20
                WebView {
                    anchors.fill: parent
                    anchors{
                        verticalCenter: parent.verticalCenter
                        left: parent.left
                    }
                    url: "qrc:///example/res/html/Forms/Form by nathann09.html" // 设置要加载的网页URL
                }
                            FluTextButton{
            text:"获取html"
            onClicked: {
                Qt.openUrlExternally("")
            }
            anchors{
                right: parent.right
                verticalCenter: parent.verticalCenter
            }
        }
        }
        CodeExpander{
            headerText: "HTML Source"
            Layout.fillWidth: true
            Layout.topMargin: -1
            code:'
    《form class="form">
       《p class="form-title">Sign in to your account《/p>
        《div class="input-container">
          《input type="email" placeholder="Enter email">
          《span>
          《/span>
      《/div>
      《div class="input-container">
          《input type="password" placeholder="Enter password">
        《/div>
         《button type="submit" class="submit">
        Sign in
      《/button>

      《p class="signup-link">
        No account?
        《a href="">Sign up《/a>
      《/p>
   《/form>
'
        }
            CodeExpander{
                headerText: "CSS Source"
                Layout.fillWidth: true
                Layout.topMargin: -1
                code:'.form {
  background-color: #fff;
  display: block;
  padding: 1rem;
  max-width: 350px;
  border-radius: 0.5rem;
  box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
}

.form-title {
  font-size: 1.25rem;
  line-height: 1.75rem;
  font-weight: 600;
  text-align: center;
  color: #000;
}

.input-container {
  position: relative;
}

.input-container input, .form button {
  outline: none;
  border: 1px solid #e5e7eb;
  margin: 8px 0;
}

.input-container input {
  background-color: #fff;
  padding: 1rem;
  padding-right: 3rem;
  font-size: 0.875rem;
  line-height: 1.25rem;
  width: 300px;
  border-radius: 0.5rem;
  box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
}

.submit {
  display: block;
  padding-top: 0.75rem;
  padding-bottom: 0.75rem;
  padding-left: 1.25rem;
  padding-right: 1.25rem;
  background-color: #4F46E5;
  color: #ffffff;
  font-size: 0.875rem;
  line-height: 1.25rem;
  font-weight: 500;
  width: 100%;
  border-radius: 0.5rem;
  text-transform: uppercase;
}

.signup-link {
  color: #6B7280;
  font-size: 0.875rem;
  line-height: 1.25rem;
  text-align: center;
}

.signup-link a {
  text-decoration: underline;
}'
            }
            FluArea{
                Layout.fillWidth: true
                height: 520
                paddings: 10
                Layout.topMargin: 20
                    WebView {
                        anchors.fill: parent
                        anchors{
                            verticalCenter: parent.verticalCenter
                            left: parent.left
                        }
                        url: "qrc:///example/res/html/Forms/Form by alexruix.html" // 设置要加载的网页URL
                    }
                                FluTextButton{
                text:"获取html"
                onClicked: {
                    Qt.openUrlExternally("")
                }
                anchors{
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                }
            }
            }
            CodeExpander{
                headerText: "HTML Source"
                Layout.fillWidth: true
                Layout.topMargin: -1
                code:'《div class="form-box">
《form class="form">
    《span class="title">Sign up《/span>
    《span class="subtitle">Create a free account with your email.《/span>
    《div class="form-container">
      《input type="text" class="input" placeholder="Full Name">
            《input type="email" class="input" placeholder="Email">
            《input type="password" class="input" placeholder="Password">
    《/div>
    《button>Sign up《/button>
《/form>
《div class="form-section">
  《p>Have an account? 《a href="">Log in《/a> 《/p>
《/div>
《/div>'
            }
                CodeExpander{
                    headerText: "CSS Source"
                    Layout.fillWidth: true
                    Layout.topMargin: -1
                    code:'.form-box {
  max-width: 300px;
  background: #f1f7fe;
  overflow: hidden;
  border-radius: 16px;
  color: #010101;
}

.form {
  position: relative;
  display: flex;
  flex-direction: column;
  padding: 32px 24px 24px;
  gap: 16px;
  text-align: center;
}

/*Form text*/
.title {
  font-weight: bold;
  font-size: 1.6rem;
}

.subtitle {
  font-size: 1rem;
  color: #666;
}

/*Inputs box*/
.form-container {
  overflow: hidden;
  border-radius: 8px;
  background-color: #fff;
  margin: 1rem 0 .5rem;
  width: 100%;
}

.input {
  background: none;
  border: 0;
  outline: 0;
  height: 40px;
  width: 100%;
  border-bottom: 1px solid #eee;
  font-size: .9rem;
  padding: 8px 15px;
}

.form-section {
  padding: 16px;
  font-size: .85rem;
  background-color: #e0ecfb;
  box-shadow: rgb(0 0 0 / 8%) 0 -1px;
}

.form-section a {
  font-weight: bold;
  color: #0066ff;
  transition: color .3s ease;
}

.form-section a:hover {
  color: #005ce6;
  text-decoration: underline;
}

/*Button*/
.form button {
  background-color: #0066ff;
  color: #fff;
  border: 0;
  border-radius: 24px;
  padding: 10px 16px;
  font-size: 1rem;
  font-weight: 600;
  cursor: pointer;
  transition: background-color .3s ease;
}

.form button:hover {
  background-color: #005ce6;
}'
                }
                FluArea{
                    Layout.fillWidth: true
                    height: 270
                    paddings: 10
                    Layout.topMargin: 20
                        WebView {
                            anchors.fill: parent
                            anchors{
                                verticalCenter: parent.verticalCenter
                                left: parent.left
                            }
                            url: "qrc:///example/res/html/Forms/Form by guilhermeyohan.html" // 设置要加载的网页URL
                        }
                                    FluTextButton{
                    text:"获取html"
                    onClicked: {
                        Qt.openUrlExternally("")
                    }
                    anchors{
                        right: parent.right
                        verticalCenter: parent.verticalCenter
                    }
                }
                }
                CodeExpander{
                    headerText: "HTML Source"
                    Layout.fillWidth: true
                    Layout.topMargin: -1
                    code:'
  《div class="subscribe">
    《p>SUBSCRIBE《/p>
    《input placeholder="Your e-mail" class="subscribe-input" name="email" type="email">
    《br>
    《div class="submit-btn">SUBMIT《/div>
  《/div>
'
                }
                    CodeExpander{
                        headerText: "CSS Source"
                        Layout.fillWidth: true
                        Layout.topMargin: -1
                        code:'.subscribe {
  position: relative;
  height: 140px;
  width: 240px;
  padding: 20px;
  background-color: #FFF;
  border-radius: 4px;
  color: #333;
  box-shadow: 0px 0px 60px 5px rgba(0, 0, 0, 0.4);
}

.subscribe:after {
  position: absolute;
  content: "";
  right: -10px;
  bottom: 18px;
  width: 0;
  height: 0;
  border-left: 0px solid transparent;
  border-right: 10px solid transparent;
  border-bottom: 10px solid #1a044e;
}

.subscribe p {
  text-align: center;
  font-size: 20px;
  font-weight: bold;
  letter-spacing: 4px;
  line-height: 28px;
}

.subscribe input {
  position: absolute;
  bottom: 30px;
  border: none;
  border-bottom: 1px solid #d4d4d4;
  padding: 10px;
  width: 82%;
  background: transparent;
  transition: all .25s ease;
}

.subscribe input:focus {
  outline: none;
  border-bottom: 1px solid #0d095e;
  font-family: "Gill Sans, Gill Sans MT, Calibri, Trebuchet MS, sans-serif";
}

.subscribe .submit-btn {
  position: absolute;
  border-radius: 30px;
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
  background-color: #0f0092;
  color: #FFF;
  padding: 12px 25px;
  display: inline-block;
  font-size: 12px;
  font-weight: bold;
  letter-spacing: 5px;
  right: -10px;
  bottom: -20px;
  cursor: pointer;
  transition: all .25s ease;
  box-shadow: -5px 6px 20px 0px rgba(26, 26, 26, 0.4);
}

.subscribe .submit-btn:hover {
  background-color: #07013d;
  box-shadow: -5px 6px 20px 0px rgba(88, 88, 88, 0.569);
}'
                    }
                    FluArea{
                        Layout.fillWidth: true
                        height: 340
                        paddings: 10
                        Layout.topMargin: 20
                            WebView {
                                anchors.fill: parent
                                anchors{
                                    verticalCenter: parent.verticalCenter
                                    left: parent.left
                                }
                                url: "qrc:///example/res/html/Forms/Form by guilhermeyohan .html" // 设置要加载的网页URL
                            }
                                        FluTextButton{
                        text:"获取html"
                        onClicked: {
                            Qt.openUrlExternally("")
                        }
                        anchors{
                            right: parent.right
                            verticalCenter: parent.verticalCenter
                        }
                    }
                    }
                    CodeExpander{
                        headerText: "HTML Source"
                        Layout.fillWidth: true
                        Layout.topMargin: -1
                        code:'《div class="login-box">

  《form>
    《div class="user-box">
      《input type="text" name="" required="">
      《label>Username《/label>
    《/div>
    《div class="user-box">
      《input type="password" name="" required="">
      《label>Password《/label>
    《/div>《center>
    《a href="#">
           SEND
       《span>《/span>
    《/a>《/center>
  《/form>
《/div>'
                    }
                        CodeExpander{
                            headerText: "CSS Source"
                            Layout.fillWidth: true
                            Layout.topMargin: -1
                            code:'.login-box {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(24, 20, 20, 0.987);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}

.login-box .user-box label {
  position: absolute;
  top: 0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #bdb8b8;
  font-size: 12px;
}

.login-box form a {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  color: #ffffff;
  font-size: 16px;
  text-decoration: none;
  text-transform: uppercase;
  overflow: hidden;
  transition: .5s;
  margin-top: 40px;
  letter-spacing: 4px
}

.login-box a:hover {
  background: #03f40f;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #03f40f,
              0 0 25px #03f40f,
              0 0 50px #03f40f,
              0 0 100px #03f40f;
}

.login-box a span {
  position: absolute;
  display: block;
}

@keyframes btn-anim1 {
  0% {
    left: -100%;
  }

  50%,100% {
    left: 100%;
  }
}

.login-box a span:nth-child(1) {
  bottom: 2px;
  left: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, transparent, #03f40f);
  animation: btn-anim1 2s linear infinite;
}'
                        }
                        FluArea{
                            Layout.fillWidth: true
                            height: 350
                            paddings: 10
                            Layout.topMargin: 20
                                WebView {
                                    anchors.fill: parent
                                    anchors{
                                        verticalCenter: parent.verticalCenter
                                        left: parent.left
                                    }
                                    url: "qrc:///example/res/html/Forms/Form by vinodjangid07.html" // 设置要加载的网页URL
                                }
                                            FluTextButton{
                            text:"获取html"
                            onClicked: {
                                Qt.openUrlExternally("")
                            }
                            anchors{
                                right: parent.right
                                verticalCenter: parent.verticalCenter
                            }
                        }
                        }
                        CodeExpander{
                            headerText: "HTML Source"
                            Layout.fillWidth: true
                            Layout.topMargin: -1
                            code:'《form action="" class="form_main">
    《p class="heading">Login《/p>
    《div class="inputContainer">
        《svg class="inputIcon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#2e2e2e" viewBox="0 0 16 16">
        《path d="M13.106 7.222c0-2.967-2.249-5.032-5.482-5.032-3.35 0-5.646 2.318-5.646 5.702 0 3.493 2.235 5.708 5.762 5.708.862 0 1.689-.123 2.304-.335v-.862c-.43.199-1.354.328-2.29.328-2.926 0-4.813-1.88-4.813-4.798 0-2.844 1.921-4.881 4.594-4.881 2.735 0 4.608 1.688 4.608 4.156 0 1.682-.554 2.769-1.416 2.769-.492 0-.772-.28-.772-.76V5.206H8.923v.834h-.11c-.266-.595-.881-.964-1.6-.964-1.4 0-2.378 1.162-2.378 2.823 0 1.737.957 2.906 2.379 2.906.8 0 1.415-.39 1.709-1.087h.11c.081.67.703 1.148 1.503 1.148 1.572 0 2.57-1.415 2.57-3.643zm-7.177.704c0-1.197.54-1.907 1.456-1.907.93 0 1.524.738 1.524 1.907S8.308 9.84 7.371 9.84c-.895 0-1.442-.725-1.442-1.914z">《/path>
        《/svg>
    《input type="text" class="inputField" id="username" placeholder="Username">
    《/div>

《div class="inputContainer">
    《svg class="inputIcon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#2e2e2e" viewBox="0 0 16 16">
    《path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z">《/path>
    《/svg>
    《input type="password" class="inputField" id="password" placeholder="Password">
《/div>


《button id="button">Submit《/button>
    《a class="forgotLink" href="#">Forgot your password?《/a>
《/form>
'
                        }
                            CodeExpander{
                                headerText: "CSS Source"
                                Layout.fillWidth: true
                                Layout.topMargin: -1
                                code:'.form_main {
  width: 220px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  background-color: rgb(255, 255, 255);
  padding: 30px 30px 30px 30px;
  box-shadow: 0px 0px 40px rgba(0, 0, 0, 0.062);
  position: relative;
  overflow: hidden;
}

.form_main::before {
  position: absolute;
  content: "";
  width: 300px;
  height: 300px;
  background-color: rgb(209, 193, 255);
  transform: rotate(45deg);
  left: -180px;
  bottom: 30px;
  z-index: 1;
  border-radius: 30px;
  box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.082);
}

.heading {
  font-size: 2em;
  color: #2e2e2e;
  font-weight: 700;
  margin: 5px 0 10px 0;
  z-index: 2;
}

.inputContainer {
  width: 100%;
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 2;
}

.inputIcon {
  position: absolute;
  left: 3px;
}

.inputField {
  width: 100%;
  height: 30px;
  background-color: transparent;
  border: none;
  border-bottom: 2px solid rgb(173, 173, 173);
  margin: 10px 0;
  color: black;
  font-size: .8em;
  font-weight: 500;
  box-sizing: border-box;
  padding-left: 30px;
}

.inputField:focus {
  outline: none;
  border-bottom: 2px solid rgb(199, 114, 255);
}

.inputField::placeholder {
  color: rgb(80, 80, 80);
  font-size: 1em;
  font-weight: 500;
}

#button {
  z-index: 2;
  position: relative;
  width: 100%;
  border: none;
  background-color: rgb(162, 104, 255);
  height: 30px;
  color: white;
  font-size: .8em;
  font-weight: 500;
  letter-spacing: 1px;
  margin: 10px;
  cursor: pointer;
}

#button:hover {
  background-color: rgb(126, 84, 255);
}

.forgotLink {
  z-index: 2;
  font-size: .7em;
  font-weight: 500;
  color: rgb(44, 24, 128);
  text-decoration: none;
  padding: 8px 15px;
  border-radius: 20px;
}

'
                            }
                            FluArea{
                                Layout.fillWidth: true
                                height: 330
                                paddings: 10
                                Layout.topMargin: 20
                                    WebView {
                                        anchors.fill: parent
                                        anchors{
                                            verticalCenter: parent.verticalCenter
                                            left: parent.left
                                        }
                                        url: "qrc:///example/res/html/Forms/Form by kennyotsu-monochromia.html" // 设置要加载的网页URL
                                    }
                                                FluTextButton{
                                text:"获取html"
                                onClicked: {
                                    Qt.openUrlExternally("")
                                }
                                anchors{
                                    right: parent.right
                                    verticalCenter: parent.verticalCenter
                                }
                            }
                            }
                            CodeExpander{
                                headerText: "HTML Source"
                                Layout.fillWidth: true
                                Layout.topMargin: -1
                                code:'《form class="form">
  《span class="close">X《/span>

  《div class="info">
  《span class="title">Two-Factor Verification《/span>
《p class="description">Enter the two-factor authentication code provided by the authenticator app 《/p>
   《/div>
    《div class="input-fields">
    《input maxlength="1" type="tel" placeholder="">
    《input maxlength="1" type="tel" placeholder="">
    《input maxlength="1" type="tel" placeholder="">
    《input maxlength="1" type="tel" placeholder="">
  《/div>

      《div class="action-btns">
        《a href="#" class="verify">Verify《/a>
        《a href="#" class="clear">Clear《/a>
      《/div>

《/form>'
                            }
                                CodeExpander{
                                    headerText: "CSS Source"
                                    Layout.fillWidth: true
                                    Layout.topMargin: -1
                                    code:'.form {
  --black: #000000;
  --ch-black: #141414;
  --eer-black: #1b1b1b;
  --night-rider: #2e2e2e;
  --white: #ffffff;
  --af-white: #f3f3f3;
  --ch-white: #e1e1e1;
  --tomato: #fa5656;
  font-family: Helvetica, sans-serif;
  padding: 25px;
  display: flex;
  max-width: 420px;
  flex-direction: column;
  align-items: center;
  overflow: hidden;
  color: var(--af-white);
  background-color: var(--black);
  border-radius: 8px;
  position: relative;
  box-shadow: 10px 10px 10px rgba(0, 0, 0, .1);
}

/*----heading and description-----*/

.info {
  margin-bottom: 20px;
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
}

.title {
  font-size: 1.5rem;
  font-weight: 900;
}

.description {
  margin-top: 10px;
  font-size: 1rem;
}

/*----input-fields------*/

.form .input-fields {
  display: flex;
  justify-content: space-between;
  gap: 10px;
}

.form .input-fields input {
  height: 2.5em;
  width: 2.5em;
  outline: none;
  text-align: center;
  font-family: Trebuchet MS, Lucida Sans Unicode, Lucida Grande, Lucida Sans, Arial, sans-serif;
  font-size: 1.5rem;
  color: var(--af-white);
  border-radius: 5px;
  border: 2.5px solid var(--eer-black);
  background-color: var(--eer-black);
}

.form .input-fields input:focus {
  border: 1px solid var(--af-white);
  box-shadow: inset 10px 10px 10px rgba(0, 0, 0, .15);
  transform: scale(1.05);
  transition: 0.5s;
}

/*-----verify and clear buttons-----*/

.action-btns {
  display: flex;
  margin-top: 20px;
  gap: 0.5rem;
}

.verify {
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  font-size: 1rem;
  font-weight: 500;
  color: var(--night-rider);
  text-shadow: none;
  background: var(--af-white);
  box-shadow: transparent;
  border: 1px solid var(--af-white);
  transition: 0.3s ease;
  user-select: none;
}

.verify:hover,.verify:focus {
  color: var(--night-rider);
  background: var(--white);
}

.clear {
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  font-size: 1rem;
  font-weight: 500;
  color: var(--ch-white);
  text-shadow: none;
  background: transparent;
  border: 1px solid var(--ch-white);
  transition: 0.3s ease;
  user-select: none;
}

.clear:hover,.clear:focus {
  color: var(--tomato);
  background-color: transparent;
  border: 1px solid var(--tomato);
}

/*-----close button------*/

.close {
  position: absolute;
  right: 10px;
  top: 10px;
  background-color: var(--night-rider);
  color: var(--ch-white);
  height: 30px;
  width: 30px;
  display: grid;
  place-items: center;
  border-radius: 5px;
  cursor: pointer;
  font-weight: 600;
  transition: .5s ease;
}

.close:hover {
  background-color: var(--tomato);
  color: var(--white);
}'
                                }
                                    FluArea{
                                        Layout.fillWidth: true
                                        height: 310
                                        paddings: 10
                                        Layout.topMargin: 20
                                            WebView {
                                                anchors.fill: parent
                                                anchors{
                                                    verticalCenter: parent.verticalCenter
                                                    left: parent.left
                                                }
                                                url: "qrc:///example/res/html/Forms/Form by Yaya12085 .html" // 设置要加载的网页URL
                                            }
                                                        FluTextButton{
                                        text:"获取html"
                                        onClicked: {
                                            Qt.openUrlExternally("")
                                        }
                                        anchors{
                                            right: parent.right
                                            verticalCenter: parent.verticalCenter
                                        }
                                    }
                                    }
                                    CodeExpander{
                                        headerText: "HTML Source"
                                        Layout.fillWidth: true
                                        Layout.topMargin: -1
                                        code:'《form class="form"> 《div class="title">OTP《/div> 《div class="title">Verification Code《/div> 《p class="message">We have sent a verification code to your mobile number《/p> 《div class="inputs"> 《input id="input1" type="text" maxlength="1"> 《input id="input2" type="text" maxlength="1"> 《input id="input3" type="text" maxlength="1"> 《input id="input4" type="text" maxlength="1"> 《/div> 《button class="action">verify me《/button> 《/form>'
                                    }
                                        CodeExpander{
                                            headerText: "CSS Source"
                                            Layout.fillWidth: true
                                            Layout.topMargin: -1
                                            code:'.form {
  display: flex;
  align-items: center;
  flex-direction: column;
  justify-content: space-around;
  width: 300px;
  background-color: white;
  border-radius: 12px;
  padding: 20px;
}

.title {
  font-size: 20px;
  font-weight: bold;
  color: black
}

.message {
  color: #a3a3a3;
  font-size: 14px;
  margin-top: 4px;
  text-align: center
}

.inputs {
  margin-top: 10px
}

.inputs input {
  width: 32px;
  height: 32px;
  text-align: center;
  border: none;
  border-bottom: 1.5px solid #d2d2d2;
  margin: 0 10px;
}

.inputs input:focus {
  border-bottom: 1.5px solid royalblue;
  outline: none;
}

.action {
  margin-top: 24px;
  padding: 12px 16px;
  border-radius: 8px;
  border: none;
  background-color: royalblue;
  color: white;
  cursor: pointer;
  align-self: end;
}'
                                        }
}

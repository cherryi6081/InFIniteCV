import QtQuick
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Controls.Basic
import QtWebView
import FluentUI
import "qrc:///example/qml/component"

FluScrollablePage{

    title:"Inputs"

    FluText{
        Layout.topMargin: 20
        text:"支持Tab键切换焦点，空格键执行点击事件"
    }
    FluArea{
        Layout.fillWidth: true
        height: 120
        paddings: 10
        Layout.topMargin: 20
            WebView {
                anchors.fill: parent
                anchors{
                    verticalCenter: parent.verticalCenter
                    left: parent.left
                }
                url: "qrc:///example/res/html/Inputs/Input by alexruix.html" // 设置要加载的网页URL
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
        code:'《input class="input" name="text" placeholder="Search..." type="search">'
    }
        CodeExpander{
            headerText: "CSS Source"
            Layout.fillWidth: true
            Layout.topMargin: -1
            code:'.input {
  max-width: 190px;
  background-color: #f5f5f5;
  color: #242424;
  padding: .15rem .5rem;
  min-height: 40px;
  border-radius: 4px;
  outline: none;
  border: none;
  line-height: 1.15;
  box-shadow: 0px 10px 20px -18px;
}

input:focus {
  border-bottom: 2px solid #5b5fc7;
  border-radius: 4px 4px 2px 2px;
}

input:hover {
  outline: 1px solid lightgrey;
}'
        }
        FluArea{
            Layout.fillWidth: true
            height: 120
            paddings: 10
            Layout.topMargin: 20
                WebView {
                    anchors.fill: parent
                    anchors{
                        verticalCenter: parent.verticalCenter
                        left: parent.left
                    }
                    url: "qrc:///example/res/html/Inputs/Input by alexruix2.html" // 设置要加载的网页URL
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
            code:'《div class="group">
    《svg class="icon" aria-hidden="true" viewBox="0 0 24 24">
        《g>
            《path d="M21.53 20.47l-3.66-3.66C19.195 15.24 20 13.214 20 11c0-4.97-4.03-9-9-9s-9 4.03-9 9 4.03 9 9 9c2.215 0 4.24-.804 5.808-2.13l3.66 3.66c.147.146.34.22.53.22s.385-.073.53-.22c.295-.293.295-.767.002-1.06zM3.5 11c0-4.135 3.365-7.5 7.5-7.5s7.5 3.365 7.5 7.5-3.365 7.5-7.5 7.5-7.5-3.365-7.5-7.5z">《/path>
        《/g>
    《/svg>
    《input placeholder="Search" type="search" class="input">
《/div>'
        }
            CodeExpander{
                headerText: "CSS Source"
                Layout.fillWidth: true
                Layout.topMargin: -1
                code:'.group {
  display: flex;
  line-height: 28px;
  align-items: center;
  position: relative;
  max-width: 190px;
}

.input {
  height: 40px;
  line-height: 28px;
  padding: 0 1rem;
  width: 100%;
  padding-left: 2.5rem;
  border: 2px solid transparent;
  border-radius: 8px;
  outline: none;
  background-color: #D9E8D8;
  color: #0d0c22;
  box-shadow: 0 0 5px #C1D9BF, 0 0 0 10px #f5f5f5eb;
  transition: .3s ease;
}

.input::placeholder {
  color: #777;
}

.icon {
  position: absolute;
  left: 1rem;
  fill: #777;
  width: 1rem;
  height: 1rem;
}
'
            }
            FluArea{
                Layout.fillWidth: true
                height: 120
                paddings: 10
                Layout.topMargin: 20
                    WebView {
                        anchors.fill: parent
                        anchors{
                            verticalCenter: parent.verticalCenter
                            left: parent.left
                        }
                        url: "qrc:///example/res/html/Inputs/Input by WhiteNervosa.html" // 设置要加载的网页URL
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
                code:'《div class="textInputWrapper">
    《input placeholder="Type Here" type="text" class="textInput">
《/div>'
            }
                CodeExpander{
                    headerText: "CSS Source"
                    Layout.fillWidth: true
                    Layout.topMargin: -1
                    code:'.textInputWrapper {
  position: relative;
  width: 180px;
  margin: 12px 5px;
  --accent-color: #a3e583;
}

.textInputWrapper:before {
  transition: border-bottom-color 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
  border-bottom: 1px solid rgba(0, 0, 0, 0.42);
}

.textInputWrapper:before,
.textInputWrapper:after {
  content: "";
  left: 0;
  right: 0;
  position: absolute;
  pointer-events: none;
  bottom: -1px;
  z-index: 4;
  width: 100%;
}

.textInputWrapper:focus-within:before {
  border-bottom: 1px solid var(--accent-color);
}

.textInputWrapper:before {
  transition: border-bottom-color 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
  border-bottom: 1px solid rgba(0, 0, 0, 0.42);
}

.textInputWrapper:focus-within:before {
  border-bottom: 1px solid var(--accent-color);
  transform: scaleX(1);
}

.textInputWrapper:focus-within:after {
  border-bottom: 2px solid var(--accent-color);
  transform: scaleX(1);
}

.textInputWrapper:after {
  content: "";
  transform: scaleX(0);
  transition: transform 250ms cubic-bezier(0, 0, 0.2, 1) 0ms;
  will-change: transform;
  border-bottom: 2px solid var(--accent-color);
  border-bottom-color: var(--accent-color);
}

.textInput::placeholder {
  transition: opacity 250ms cubic-bezier(0, 0, 0.2, 1) 0ms;
  opacity: 1;
  user-select: none;
  color: rgba(255, 255, 255, 0.582);
}

.textInputWrapper .textInput {
  border-radius: 5px 5px 0px 0px;
  box-shadow: 0px 2px 5px rgb(35 35 35 / 30%);
  max-height: 36px;
  background-color: #252525;
  transition-timing-function: cubic-bezier(0.25, 0.8, 0.25, 1);
  transition-duration: 200ms;
  transition-property: background-color;
  color: #e8e8e8;
  font-size: 14px;
  font-weight: 500;
  padding: 12px;
  width: 100%;
  border-left: none;
  border-bottom: none;
  border-right: none;
}

.textInputWrapper .textInput:focus,
.textInputWrapper .textInput:active {
  outline: none;
}

.textInputWrapper:focus-within .textInput,
.textInputWrapper .textInput:focus,
.textInputWrapper .textInput:active {
  background-color: #353535;
}

.textInputWrapper:focus-within .textInput::placeholder {
  opacity: 0;
}
'
                }
                FluArea{
                    Layout.fillWidth: true
                    height: 120
                    paddings: 10
                    Layout.topMargin: 20
                        WebView {
                            anchors.fill: parent
                            anchors{
                                verticalCenter: parent.verticalCenter
                                left: parent.left
                            }
                            url: "qrc:///example/res/html/Inputs/Input by TimTrayler.html" // 设置要加载的网页URL
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
                    code:'《div class="searchbar">
    《div class="searchbar-wrapper">
        《div class="searchbar-left">
            《div class="search-icon-wrapper">
                《span class="search-icon searchbar-icon">
                    《svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                        《path d="M15.5 14h-.79l-.28-.27A6.471 6.471 0 0 0 16 9.5 6.5 6.5 0 1 0 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z">
                        《/path>
                    《/svg>
                《/span>
            《/div>
        《/div>

        《div class="searchbar-center">
            《div class="searchbar-input-spacer">《/div>

            《input type="text" class="searchbar-input" maxlength="2048" name="q" autocapitalize="off" autocomplete="off" title="Search" role="combobox" placeholder="Search Google">
        《/div>

        《div class="searchbar-right">
            《svg class="voice-search" role="button" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                《path fill="#4285f4" d="m12 15c1.66 0 3-1.31 3-2.97v-7.02c0-1.66-1.34-3.01-3-3.01s-3 1.34-3 3.01v7.02c0 1.66 1.34 2.97 3 2.97z">
                《/path>
                《path fill="#34a853" d="m11 18.08h2v3.92h-2z">《/path>
                《path fill="#fbbc05" d="m7.05 16.87c-1.27-1.33-2.05-2.83-2.05-4.87h2c0 1.45 0.56 2.42 1.47 3.38v0.32l-1.15 1.18z">
                《/path>
                《path fill="#ea4335" d="m12 16.93a4.97 5.25 0 0 1 -3.54 -1.55l-1.41 1.49c1.26 1.34 3.02 2.13 4.95 2.13 3.87 0 6.99-2.92 6.99-7h-1.99c0 2.92-2.24 4.93-5 4.93z">
                《/path>
            《/svg>
        《/div>
    《/div>
《/div>'
                }
                    CodeExpander{
                        headerText: "CSS Source"
                        Layout.fillWidth: true
                        Layout.topMargin: -1
                        code:'.searchbar {
  font-size: 14px;
  font-family: arial, sans-serif;
  color: #202124;
  display: flex;
  z-index: 3;
  height: 44px;
  background: white;
  border: 1px solid #dfe1e5;
  box-shadow: none;
  border-radius: 24px;
  margin: 0 auto;
  width: auto;
  max-width: 224px;
}

.searchbar:hover {
  box-shadow: 0 1px 6px rgb(32 33 36 / 28%);
  border-color: rgba(223,225,229,0);
}

.searchbar-wrapper {
  flex: 1;
  display: flex;
  padding: 5px 8px 0 14px;
}

.searchbar-left {
  font-size: 14px;
  font-family: arial, sans-serif;
  color: #202124;
  display: flex;
  align-items: center;
  padding-right: 13px;
  margin-top: -5px;
}

.search-icon-wrapper {
  margin: auto;
}

.search-icon {
  margin-top: 3px;
  color: #9aa0a6;
  height: 20px;
  line-height: 20px;
  width: 20px;
}

.searchbar-icon {
  display: inline-block;
  fill: currentColor;
  height: 24px;
  line-height: 24px;
  position: relative;
  width: 24px;
}

.searchbar-center {
  display: flex;
  flex: 1;
  flex-wrap: wrap;
}

.searchbar-input-spacer {
  color: transparent;
  flex: 100%;
  white-space: pre;
  height: 34px;
  font-size: 16px;
}

.searchbar-input {
  background-color: transparent;
  border: none;
  margin: 0;
  padding: 0;
  color: rgba(0, 0, 0, .87);
  word-wrap: break-word;
  outline: none;
  display: flex;
  flex: 100%;
  margin-top: -37px;
  height: 34px;
  font-size: 16px;
  max-width: 100%;
  width: 100%;
}

.searchbar-right {
  display: flex;
  flex: 0 0 auto;
  margin-top: -5px;
  align-items: stretch;
  flex-direction: row
}

.searchbar-clear-icon {
  margin-right: 12px
}

.voice-search {
  flex: 1 0 auto;
  display: flex;
  cursor: pointer;
  align-items: center;
  border: 0;
  background: transparent;
  outline: none;
  padding: 0 8px;
  width: 2.8em;
}'
                    }
                    FluArea{
                        Layout.fillWidth: true
                        height: 120
                        paddings: 10
                        Layout.topMargin: 20
                            WebView {
                                anchors.fill: parent
                                anchors{
                                    verticalCenter: parent.verticalCenter
                                    left: parent.left
                                }
                                url: "qrc:///example/res/html/Inputs/Input by Praashoo7.html" // 设置要加载的网页URL
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
                        code:'《input type="text" autocomplete="off" name="text" class="input" placeholder="Username">'
                    }
                        CodeExpander{
                            headerText: "CSS Source"
                            Layout.fillWidth: true
                            Layout.topMargin: -1
                            code:'.input {
  border: none;
  outline: none;
  border-radius: 15px;
  padding: 1em;
  background-color: #ccc;
  box-shadow: inset 2px 5px 10px rgba(0,0,0,0.3);
  transition: 300ms ease-in-out;
}

.input:focus {
  background-color: white;
  transform: scale(1.05);
  box-shadow: 13px 13px 100px #969696,
             -13px -13px 100px #ffffff;
}'
                        }
                        FluArea{
                            Layout.fillWidth: true
                            height: 120
                            paddings: 10
                            Layout.topMargin: 20
                                WebView {
                                    anchors.fill: parent
                                    anchors{
                                        verticalCenter: parent.verticalCenter
                                        left: parent.left
                                    }
                                    url: "qrc:///example/res/html/Inputs/Input by shadowmurphy.html" // 设置要加载的网页URL
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
                            code:'《input class="input" placeholder="text">'
                        }
                            CodeExpander{
                                headerText: "CSS Source"
                                Layout.fillWidth: true
                                Layout.topMargin: -1
                                code:'.input {
  border: 2px solid transparent;
  width: 15em;
  height: 2.5em;
  padding-left: 0.8em;
  outline: none;
  overflow: hidden;
  background-color: #F3F3F3;
  border-radius: 10px;
  transition: all 0.5s;
}

.input:hover,
.input:focus {
  border: 2px solid #4A9DEC;
  box-shadow: 0px 0px 0px 7px rgb(74, 157, 236, 20%);
  background-color: white;
}
'
                            }
                            FluArea{
                                Layout.fillWidth: true
                                height: 120
                                paddings: 10
                                Layout.topMargin: 20
                                    WebView {
                                        anchors.fill: parent
                                        anchors{
                                            verticalCenter: parent.verticalCenter
                                            left: parent.left
                                        }
                                        url: "qrc:///example/res/html/Inputs/Input by satyamchaudharydev.html" // 设置要加载的网页URL
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
    《label for="search">
        《input class="input" type="text" required="" placeholder="Search twitter" id="search">
        《div class="fancy-bg">《/div>
        《div class="search">
            《svg viewBox="0 0 24 24" aria-hidden="true" class="r-14j79pv r-4qtqp9 r-yyyyoo r-1xvli5t r-dnmrzs r-4wgw6l r-f727ji r-bnwqim r-1plcrui r-lrvibr">
                《g>
                    《path d="M21.53 20.47l-3.66-3.66C19.195 15.24 20 13.214 20 11c0-4.97-4.03-9-9-9s-9 4.03-9 9 4.03 9 9 9c2.215 0 4.24-.804 5.808-2.13l3.66 3.66c.147.146.34.22.53.22s.385-.073.53-.22c.295-.293.295-.767.002-1.06zM3.5 11c0-4.135 3.365-7.5 7.5-7.5s7.5 3.365 7.5 7.5-3.365 7.5-7.5 7.5-7.5-3.365-7.5-7.5z">《/path>
                《/g>
            《/svg>
        《/div>
        《button class="close-btn" type="reset">
            《svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                《path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd">《/path>
            《/svg>
        《/button>
    《/label>
《/form>'
                            }
                                CodeExpander{
                                    headerText: "CSS Source"
                                    Layout.fillWidth: true
                                    Layout.topMargin: -1
                                    code:'/* this is a recreation of twitter search in css */
.form {
  --input-text-color: #fff;
  --input-bg-color: #283542;
  --focus-input-bg-color: transparent;
  --text-color: #949faa;
  --active-color: #1b9bee;
  --width-of-input: 200px;
  --inline-padding-of-input: 1.2em;
  --gap: 0.9rem;
}
/* form style */
.form {
  font-size: 0.9rem;
  display: flex;
  gap: 0.5rem;
  align-items: center;
  width: var(--width-of-input);
  position: relative;
  isolation: isolate;
}
/* a fancy bg for showing background and border when focus. */
.fancy-bg {
  position: absolute;
  width: 100%;
  inset: 0;
  background: var(--input-bg-color);
  border-radius: 30px;
  height: 100%;
  z-index: -1;
  pointer-events: none;
  box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px;
}
/* label styling */
label {
  width: 100%;
  padding: 0.8em;
  height: 40px;
  padding-inline: var(--inline-padding-of-input);
  display: flex;
  align-items: center;
}

.search,.close-btn {
  position: absolute;
}
/* styling search-icon */
.search {
  fill: var(--text-color);
  left: var(--inline-padding-of-input);
}
/* svg -- size */
svg {
  width: 17px;
  display: block;
}
/* styling of close button */
.close-btn {
  border: none;
  right: var(--inline-padding-of-input);
  box-sizing: border-box;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #fff;
  padding: 0.1em;
  width: 20px;
  height: 20px;
  border-radius: 50%;
  background: var(--active-color);
  opacity: 0;
  visibility: hidden;
}
/* styling of input */
.input {
  color: var(--input-text-color);
  width: 100%;
  margin-inline: min(2em,calc(var(--inline-padding-of-input) + var(--gap)));
  background: none;
  border: none;
}

.input:focus {
  outline: none;
}

.input::placeholder {
  color: var(--text-color)
}
/* input background change in focus */
.input:focus ~ .fancy-bg {
  border: 1px solid var(--active-color);
  background: var(--focus-input-bg-color);
}
/* search icon color change in focus */
.input:focus ~ .search {
  fill: var(--active-color);
}
/* showing close button when typing */
.input:valid ~ .close-btn {
  opacity: 1;
  visibility: visible;
}
/* this is for the default background in input,when selecting autofill options -- you can remove this code if you do not want to override the browser style.  */
input:-webkit-autofill,
input:-webkit-autofill:hover,
input:-webkit-autofill:focus,
input:-webkit-autofill:active {
  -webkit-transition: "color 9999s ease-out, background-color 9999s ease-out";
  -webkit-transition-delay: 9999s;
}'
                                }
                                FluArea{
                                    Layout.fillWidth: true
                                    height: 120
                                    paddings: 10
                                    Layout.topMargin: 20
                                        WebView {
                                            anchors.fill: parent
                                            anchors{
                                                verticalCenter: parent.verticalCenter
                                                left: parent.left
                                            }
                                            url: "qrc:///example/res/html/Inputs/Input by G4b413l.html" // 设置要加载的网页URL
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
                                    code:'《div class="group">
  《input required="" type="text" class="input">
  《span class="highlight">《/span>
  《span class="bar">《/span>
  《label>Name《/label>
《/div>'
                                }
                                    CodeExpander{
                                        headerText: "CSS Source"
                                        Layout.fillWidth: true
                                        Layout.topMargin: -1
                                        code:'.group {
 position: relative;
}

.input {
 font-size: 16px;
 padding: 10px 10px 10px 5px;
 display: block;
 width: 200px;
 border: none;
 border-bottom: 1px solid #515151;
 background: transparent;
}

.input:focus {
 outline: none;
}

label {
 color: #999;
 font-size: 18px;
 font-weight: normal;
 position: absolute;
 pointer-events: none;
 left: 5px;
 top: 10px;
 transition: 0.2s ease all;
 -moz-transition: 0.2s ease all;
 -webkit-transition: 0.2s ease all;
}

.input:focus ~ label, .input:valid ~ label {
 top: -20px;
 font-size: 14px;
 color: #5264AE;
}

.bar {
 position: relative;
 display: block;
 width: 200px;
}

.bar:before, .bar:after {
 content: "";
 height: 2px;
 width: 0;
 bottom: 1px;
 position: absolute;
 background: #5264AE;
 transition: 0.2s ease all;
 -moz-transition: 0.2s ease all;
 -webkit-transition: 0.2s ease all;
}

.bar:before {
 left: 50%;
}

.bar:after {
 right: 50%;
}

.input:focus ~ .bar:before, .input:focus ~ .bar:after {
 width: 50%;
}

.highlight {
 position: absolute;
 height: 60%;
 width: 100px;
 top: 25%;
 left: 0;
 pointer-events: none;
 opacity: 0.5;
}

.input:focus ~ .highlight {
 animation: inputHighlighter 0.3s ease;
}

@keyframes inputHighlighter {
 from {
  background: #5264AE;
 }

 to {
  width: 0;
  background: transparent;
 }
}'
                                    }                                 
}

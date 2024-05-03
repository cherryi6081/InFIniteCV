import QtQuick
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Controls.Basic
import QtWebView
import FluentUI
import "qrc:///example/qml/component"

FluScrollablePage{

    title:"Toggle Switches"

    FluText{
        Layout.topMargin: 20
        text:"支持Tab键切换焦点，空格键执行点击事件"
    }
    FluArea{
        Layout.fillWidth: true
        height: 100
        paddings: 10
        Layout.topMargin: 20
            WebView {
                anchors.fill: parent
                anchors{
                    verticalCenter: parent.verticalCenter
                    left: parent.left
                }
                url:"qrc:///example/res/html/Toggle/Switch by gharsh11032000.html" // 设置要加载的网页URL
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
        code:'《label class="switch">
  《input type="checkbox">
  《span class="slider">《/span>
《/label>'
    }
        CodeExpander{
            headerText: "CSS Source"
            Layout.fillWidth: true
            Layout.topMargin: -1
            code:'/* The switch - the box around the slider */
.switch {
  font-size: 17px;
  position: relative;
  display: inline-block;
  width: 3.5em;
  height: 2em;
}

/* Hide default HTML checkbox */
.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

/* The slider */
.slider {
  position: absolute;
  cursor: pointer;
  inset: 0;
  background: #d4acfb;
  border-radius: 50px;
  transition: all 0.4s cubic-bezier(0.23, 1, 0.320, 1);
}

.slider:before {
  position: absolute;
  content: "";
  height: 1.4em;
  width: 1.4em;
  left: 0.3em;
  bottom: 0.3em;
  background-color: white;
  border-radius: 50px;
  box-shadow: 0 0px 20px rgba(0,0,0,0.4);
  transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

.switch input:checked + .slider {
  background: #b84fce;
}

.switch input:focus + .slider {
  box-shadow: 0 0 1px #b84fce;
}

.switch input:checked + .slider:before {
  transform: translateX(1.6em);
  width: 2em;
  height: 2em;
  bottom: 0;
}'
        }
        FluArea{
            Layout.fillWidth: true
            height: 100
            paddings: 10
            Layout.topMargin: 20
                WebView {
                    anchors.fill: parent
                    anchors{
                        verticalCenter: parent.verticalCenter
                        left: parent.left
                    }
                    url: "qrc:///example/res/html/Toggle/Switch by namecho.html" // 设置要加载的网页URL
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
            code:'《label class="switch">
  《input type="checkbox">
  《span class="slider">《/span>
《/label>'
        }
            CodeExpander{
                headerText: "CSS Source"
                Layout.fillWidth: true
                Layout.topMargin: -1
                code:'.switch {
 --button-width: 3.5em;
 --button-height: 2em;
 --toggle-diameter: 1.5em;
 --button-toggle-offset: calc((var(--button-height) - var(--toggle-diameter)) / 2);
 --toggle-shadow-offset: 10px;
 --toggle-wider: 3em;
 --color-grey: #cccccc;
 --color-green: #4296f4;
}

.slider {
 display: inline-block;
 width: var(--button-width);
 height: var(--button-height);
 background-color: var(--color-grey);
 border-radius: calc(var(--button-height) / 2);
 position: relative;
 transition: 0.3s all ease-in-out;
}

.slider::after {
 content: "";
 display: inline-block;
 width: var(--toggle-diameter);
 height: var(--toggle-diameter);
 background-color: #fff;
 border-radius: calc(var(--toggle-diameter) / 2);
 position: absolute;
 top: var(--button-toggle-offset);
 transform: translateX(var(--button-toggle-offset));
 box-shadow: var(--toggle-shadow-offset) 0 calc(var(--toggle-shadow-offset) * 4) rgba(0, 0, 0, 0.1);
 transition: 0.3s all ease-in-out;
}

.switch input[type="checkbox"]:checked + .slider {
 background-color: var(--color-green);
}

.switch input[type="checkbox"]:checked + .slider::after {
 transform: translateX(calc(var(--button-width) - var(--toggle-diameter) - var(--button-toggle-offset)));
 box-shadow: calc(var(--toggle-shadow-offset) * -1) 0 calc(var(--toggle-shadow-offset) * 4) rgba(0, 0, 0, 0.1);
}

.switch input[type="checkbox"] {
 display: none;
}

.switch input[type="checkbox"]:active + .slider::after {
 width: var(--toggle-wider);
}

.switch input[type="checkbox"]:checked:active + .slider::after {
 transform: translateX(calc(var(--button-width) - var(--toggle-wider) - var(--button-toggle-offset)));
}
'
            }
            FluArea{
                Layout.fillWidth: true
                height: 100
                paddings: 10
                Layout.topMargin: 20
                    WebView {
                        anchors.fill: parent
                        anchors{
                            verticalCenter: parent.verticalCenter
                            left: parent.left
                        }
                        url:"qrc:///example/res/html/Toggle/Switch by vinodjangid07.html" // 设置要加载的网页URL
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
                code:'《input type="checkbox" id="checkbox" />
《label for="checkbox" class="switch">
  Start
  《svg
    class="slider"
    viewBox="0 0 512 512"
    height="1em"
    xmlns="http://www.w3.org/2000/svg"
  >
    《path
      d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V256c0 17.7 14.3 32 32 32s32-14.3 32-32V32zM143.5 120.6c13.6-11.3 15.4-31.5 4.1-45.1s-31.5-15.4-45.1-4.1C49.7 115.4 16 181.8 16 256c0 132.5 107.5 240 240 240s240-107.5 240-240c0-74.2-33.8-140.6-86.6-184.6c-13.6-11.3-33.8-9.4-45.1 4.1s-9.4 33.8 4.1 45.1c38.9 32.3 63.5 81 63.5 135.4c0 97.2-78.8 176-176 176s-176-78.8-176-176c0-54.4 24.7-103.1 63.5-135.4z"
    >《/path>
  《/svg>
《/label>
'
            }
                CodeExpander{
                    headerText: "CSS Source"
                    Layout.fillWidth: true
                    Layout.topMargin: -1
                    code:'#checkbox {
  display: none;
}

.switch {
  position: relative;
  width: fit-content;
  padding: 10px 20px;
  background-color: rgb(46, 46, 46);
  border-radius: 50px;
  z-index: 1;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
  color: white;
  font-size: 0.9em;
  font-weight: 600;
  transition: all 0.3s;
}
.switch svg path {
  fill: white;
}
#checkbox:checked + .switch {
  background-color: rgb(174, 0, 255);
  box-shadow: 0px 0px 40px rgba(174, 0, 255, 0.438);
}
'
                }
                FluArea{
                    Layout.fillWidth: true
                    height: 100
                    paddings: 10
                    Layout.topMargin: 20
                        WebView {
                            anchors.fill: parent
                            anchors{
                                verticalCenter: parent.verticalCenter
                                left: parent.left
                            }
                            url: "qrc:///example/res/html/Toggle/Switch by Shoh2008.html" // 设置要加载的网页URL
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
                    code:'《div class="checkbox-wrapper-41">
  《input type="checkbox">
《/div>'
                }
                    CodeExpander{
                        headerText: "CSS Source"
                        Layout.fillWidth: true
                        Layout.topMargin: -1
                        code:'.checkbox-wrapper-41 {
  --size: 100px;
}

.checkbox-wrapper-41 input[type="checkbox"] {
  -webkit-appearance: none;
  width: var(--size);
  height: calc(var(--size) / 2);
  background-color: #fff;
  border: 3px solid #222;
  border-radius: 30px 100px 100px 100px;
  box-shadow: 0 10px 20px rgba(0,0,0,0.2);
  outline: none;
  cursor: pointer;
  position: relative;
  transition: all 0.5s;
}

.checkbox-wrapper-41 input[type="checkbox"]::before {
  content: "";
  position: absolute;
  width: calc(var(--size) / 2);
  height: calc(var(--size) / 2);
  left: 0;
  top: 50%;
  transform: translateY(-50%) scale(0.7);
  border: 3px solid #222;
  border-radius: 30px 100px 100px 100px;
  background-color: #fde881;
  box-sizing: border-box;
  transition: all 0.5s;
}

.checkbox-wrapper-41 input[type="checkbox"]:checked {
  background-color: #fde881;
  border-radius: 100px 100px 30px 100px;
}

.checkbox-wrapper-41 input[type="checkbox"]:checked::before {
  left: 50%;
  background-color: #fff;
  border-radius: 100px 100px 30px 100px;
}'
                    }
                    FluArea{
                        Layout.fillWidth: true
                        height: 100
                        paddings: 10
                        Layout.topMargin: 20
                            WebView {
                                anchors.fill: parent
                                anchors{
                                    verticalCenter: parent.verticalCenter
                                    left: parent.left
                                }
                                url: "qrc:///example/res/html/Toggle/Switch by EddyBel.html" // 设置要加载的网页URL
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
                        code:'《label class="switch">
  《input type="checkbox" class="input__check">
  《span class="slider">《/span>
《/label>'
                    }
                        CodeExpander{
                            headerText: "CSS Source"
                            Layout.fillWidth: true
                            Layout.topMargin: -1
                            code:'/* The switch - the box around the slider */
.switch {
  font-size: 17px;
  position: relative;
  display: inline-block;
  width: 3.5em;
  height: 2em;
  transform-style: preserve-3d;
  perspective: 500px;
  animation: toggle__animation 3s infinite;
}

.switch::before {
  content: "";
  position: absolute;
  width: 100%;
  height: 100%;
  left: 0;
  top: 0;
  filter: blur(20px);
  z-index: -1;
  border-radius: 50px;
  background-color: #d8ff99;
  background-image: radial-gradient(at 21% 46%, hsla(183,65%,60%,1) 0px, transparent 50%),
radial-gradient(at 23% 25%, hsla(359,74%,70%,1) 0px, transparent 50%),
radial-gradient(at 20% 1%, hsla(267,83%,75%,1) 0px, transparent 50%),
radial-gradient(at 86% 87%, hsla(204,69%,68%,1) 0px, transparent 50%),
radial-gradient(at 99% 41%, hsla(171,72%,77%,1) 0px, transparent 50%),
radial-gradient(at 55% 24%, hsla(138,60%,62%,1) 0px, transparent 50%);
}

/* Hide default HTML checkbox */
.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

/* The slider */
.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #fdfefedc;
  transition: .4s;
  border-radius: 30px;
}

.slider:before {
  position: absolute;
  content: "";
  height: 1.4em;
  width: 1.4em;
  left: 0.3em;
  bottom: 0.35em;
  transition: .4s;
  border-radius: 50%;
  box-shadow: rgba(0, 0, 0, 0.17) 0px -10px 10px 0px inset,
     rgba(0, 0, 0, 0.09) 0px -1px 15px -8px;
  background-color: #ff99fd;
  background-image: radial-gradient(at 81% 39%, hsla(327,79%,79%,1) 0px, transparent 50%),
  radial-gradient(at 11% 72%, hsla(264,64%,79%,1) 0px, transparent 50%),
  radial-gradient(at 23% 20%, hsla(75,98%,71%,1) 0px, transparent 50%);
}

.input__check:checked + .slider {
  background-color: #17202A;
}

.input__check:checked + .slider:before {
  transform: translateX(1.5em);
}

@keyframes toggle__animation {
  0%, 100% {
    transform: translateY(-10px) rotateX(15deg) rotateY(-20deg);
  }

  50% {
    transform: translateY(0px) rotateX(15deg) rotateY(-20deg);
  }
}'
                        }
                        FluArea{
                            Layout.fillWidth: true
                            height: 100
                            paddings: 10
                            Layout.topMargin: 20
                                WebView {
                                    anchors.fill: parent
                                    anchors{
                                        verticalCenter: parent.verticalCenter
                                        left: parent.left
                                    }
                                    url: "qrc:///example/res/html/Toggle/Switch by barisdogansutcu.html" // 设置要加载的网页URL
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
                            code:'《div class="love">
  《input id="switch" type="checkbox">
  《label class="love-heart" for="switch">
    《i class="left">《/i>
    《i class="right">《/i>
    《i class="bottom">《/i>
    《div class="round">《/div>
  《/label>
《/div>'
                        }
                            CodeExpander{
                                headerText: "CSS Source"
                                Layout.fillWidth: true
                                Layout.topMargin: -1
                                code:'.love-heart:before,#switch {
 display: none;
}

.love-heart, .love-heart::after {
 border-color: hsl(231deg 28% 86%);
 border: 1px solid;
 border-top-left-radius: 100px;
 border-top-right-radius: 100px;
 width: 10px;
 height: 8px;
 border-bottom: 0
}

.round {
 position: absolute;
 z-index: 1;
 width: 8px;
 height: 8px;
 background: hsl(0deg 0% 100%);
 box-shadow: rgb(0 0 0 / 24%) 0px 0px 4px 0px;
 border-radius: 100%;
 left: 0px;
 bottom: -1px;
 transition: all .5s ease;
 animation: check-animation2 .5s forwards;
}

input:checked + label .round {
 transform: translate(0px, 0px);
 animation: check-animation .5s forwards;
 background-color: hsl(0deg 0% 100%);
}

@keyframes check-animation {
 0% {
  transform: translate(0px, 0px);
 }

 50% {
  transform: translate(0px, 7px);
 }

 100% {
  transform: translate(7px, 7px);
 }
}

@keyframes check-animation2 {
 0% {
  transform: translate(7px, 7px);
 }

 50% {
  transform: translate(0px, 7px);
 }

 100% {
  transform: translate(0px, 0px);
 }
}

.love-heart {
 box-sizing: border-box;
 position: relative;
 transform: rotate(-45deg) translate(-50%, -33px) scale(4);
 display: block;
 border-color: hsl(231deg 28% 86%);
 cursor: pointer;
 top: 0;
}

input:checked + .love-heart, input:checked + .love-heart::after, input:checked + .love-heart .bottom {
 border-color: hsl(347deg 81% 61%);
 box-shadow: inset 6px -5px 0px 2px hsl(347deg 99% 72%);
}

.love-heart::after, .love-heart .bottom {
 content: "";
 display: block;
 box-sizing: border-box;
 position: absolute;
 border-color: hsl(231deg 28% 86%);
}

.love-heart::after {
 right: -9px;
 transform: rotate(90deg);
 top: 7px;
}

.love-heart .bottom {
 width: 11px;
 height: 11px;
 border-left: 1px solid;
 border-bottom: 1px solid;
 border-color: hsl(231deg 28% 86%);
 left: -1px;
 top: 5px;
 border-radius: 0px 0px 0px 5px;
}
'
                            }
                            FluArea{
                                Layout.fillWidth: true
                                height: 100
                                paddings: 10
                                Layout.topMargin: 20
                                    WebView {
                                        anchors.fill: parent
                                        anchors{
                                            verticalCenter: parent.verticalCenter
                                            left: parent.left
                                        }
                                        url: "qrc:///example/res/html/Toggle/Switch by iSweat-exe.html" // 设置要加载的网页URL
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
                                code:'《label class="switch">
  《input type="checkbox" />
  《span class="slider">《/span>
《/label>
'
                            }
                                CodeExpander{
                                    headerText: "CSS Source"
                                    Layout.fillWidth: true
                                    Layout.topMargin: -1
                                    code:'/* The switch - the box around the slider */
.switch {
  font-size: 20px;
  position: relative;
  display: inline-block;
  width: 3.5em;
  height: 2em;
}

/* Hide default HTML checkbox */
.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

/* The slider */
.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  transition: 0.4s;
  border-radius: 10px;
}

.slider:before {
  position: absolute;
  content: "";
  height: 1.4em;
  width: 1.4em;
  border-radius: 5px;
  left: 0.3em;
  bottom: 0.3em;
  background-color: white;
  transition: 0.4s;
}

.switch input:checked + .slider {
  background-color: green;
}

.switch input:checked + .slider:before {
  transform: translateX(1.5em);
}
'
                                }
                                    FluArea{
                                        Layout.fillWidth: true
                                        height: 100
                                        paddings: 10
                                        Layout.topMargin: 20
                                            WebView {
                                                anchors.fill: parent
                                                anchors{
                                                    verticalCenter: parent.verticalCenter
                                                    left: parent.left
                                                }
                                                url: "qrc:///example/res/html/Toggle/Switch by ercnersoy.html" // 设置要加载的网页URL
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
                                        code:'《label class="switch">
  《input class="ch" type="checkbox" />
  《span class="slider">《/span>
《/label>
'
                                    }
                                        CodeExpander{
                                            headerText: "CSS Source"
                                            Layout.fillWidth: true
                                            Layout.topMargin: -1
                                            code:'/* The switch - the box around the slider */
.switch {
  font-size: 17px;
  position: relative;
  display: inline-block;
  width: 3.5em;
  height: 1.5em;
}
/* Hide default HTML checkbox */
.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}
/* The slider */
.slider {
  position: absolute;
  cursor: pointer;
  inset: 0;
  background-color: #ccc;
  transition: 0.4s;
  border-radius: 1rem 0rem 1rem;
}

.slider:before {
  position: absolute;
  content: "";
  height: 1.5em;
  width: 1.4em;
  left: 0em;
  bottom: 0em;
  background-color: white;
  transition: 0.4s;
  border-radius: 1rem 0rem 1rem;
  border: 3px solid white;
}

.ch:checked + .slider {
  background-color: #72eb67;
}

.ch:focus + .slider {
  box-shadow: 0 0 1px #2196f3;
}

.ch:checked + .slider:before {
  transform: translateX(2.2em);
  background-color: green;
  box-shadow: 0px 0px 40px 5px #72eb67;
  border: 3px solid white;
}

.ch:checked + .slider::after {
  content: "|";
  color: white;
  position: absolute;
  right: 0.3rem;
  top: -3.3px;
  transform: rotate(45deg);
}
'
                                        }
                                        FluArea{
                                            Layout.fillWidth: true
                                            height: 100
                                            paddings: 10
                                            Layout.topMargin: 20
                                                WebView {
                                                    anchors.fill: parent
                                                    anchors{
                                                        verticalCenter: parent.verticalCenter
                                                        left: parent.left
                                                    }
                                                    url: "qrc:///example/res/html/Toggle/Switch by AbanoubMagdy1.html" // 设置要加载的网页URL
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
                                            code:'《label class="switch">
  《input type="checkbox">
  《span class="slider">《/span>
  《span class="text on">On《/span>
  《span class="text off">Off《/span>
《/label>'
                                        }
                                            CodeExpander{
                                                headerText: "CSS Source"
                                                Layout.fillWidth: true
                                                Layout.topMargin: -1
                                                code:'/* The switch - the box around the slider */
.switch {
  font-size: 17px;
  position: relative;
  display: inline-block;
  width: 5.2em;
  height: 2em;
  overflow: hidden;
}

/* Hide default HTML checkbox */
.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

/* The slider */
.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #eee;
  transition: .4s;
  border-radius: 30px;
}

.slider:before {
  position: absolute;
  content: "";
  height: 1.4em;
  width: 1.4em;
  border-radius: 20px;
  border: 1px solid #333;
  left: 0.4em;
  bottom: 0.2em;
  background-color: white;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  transform: translateX(3em);
}

.switch .text {
  position: absolute;
  top: 50%;
  pointer-events: none;
  text-transform: uppercase;
  transform: translateY(-50%);
  transition: .4s;
}

.switch .text.on {
  left: .8rem;
  transform: translateX(-3rem) translateY(-50%);
}

.switch .text.off {
  color: #999;
  right: .8rem;
}

input:checked ~ .text.off {
  transform: translateX(3rem) translateY(-50%);
}

input:checked ~ .text.on {
  transform: translateX(0) translateY(-50%);
}'
                                            }
}

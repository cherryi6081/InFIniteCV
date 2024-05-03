import QtQuick
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Controls.Basic
import QtWebView
import FluentUI
import "qrc:///example/qml/component"

FluScrollablePage{

    title:"Checkbox"

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
                url: "qrc:///example/res/html/Checkbox/Checkbox by WhiteNervosa.html" // 设置要加载的网页URL
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
        code:'《div class="customCheckBoxHolder">

    《input type="checkbox" id="cCB1" class="customCheckBoxInput">
    《label for="cCB1" class="customCheckBoxWrapper">
        《div class="customCheckBox">
            《div class="inner">Toggle Me《/div>
        《/div>
    《/label>

《/div>'
    }
        CodeExpander{
            headerText: "CSS Source"
            Layout.fillWidth: true
            Layout.topMargin: -1
            code:'.customCheckBoxHolder {
  margin: 5px;
  display: flex;
}

.customCheckBox {
  width: fit-content;
  position: relative;
  overflow: hidden;
  cursor: pointer;
  user-select: none;
  padding: 2px 8px;
  background-color: rgba(0, 0, 0, 0.16);
  border-radius: 0px;
  color: rgba(255, 255, 255, 0.7);
  transition-timing-function: cubic-bezier(0.25, 0.8, 0.25, 1);
  transition-duration: 300ms;
  transition-property: color, background-color, box-shadow;
  display: flex;
  height: 32px;
  align-items: center;
  box-shadow: rgba(0, 0, 0, 0.15) 0px 2px 1px 0px inset, rgba(255, 255, 255, 0.17) 0px 1px 1px 0px;
  outline: none;
  justify-content: center;
  min-width: 55px;
}

.customCheckBox:hover {
  background-color: #2c2c2c;
  color: white;
  box-shadow: rgba(0, 0, 0, 0.23) 0px -4px 1px 0px inset, rgba(255, 255, 255, 0.17) 0px -1px 1px 0px, rgba(0, 0, 0, 0.17) 0px 2px 4px 1px;
}

.customCheckBox .inner {
  font-size: 18px;
  font-weight: 900;
  pointer-events: none;
  transition-timing-function: cubic-bezier(0.25, 0.8, 0.25, 1);
  transition-duration: 300ms;
  transition-property: transform;
  transform: translateY(0px);
}

.customCheckBox:hover .inner {
  transform: translateY(-2px);
}

/* Multiple Checkboxes can be chained together for a radio input */
.customCheckBoxWrapper:first-of-type .customCheckBox {
  border-bottom-left-radius: 5px;
  border-top-left-radius: 5px;
  border-right: 0px;
}

.customCheckBoxWrapper:last-of-type .customCheckBox {
  border-bottom-right-radius: 5px;
  border-top-right-radius: 5px;
  border-left: 0px;
}

.customCheckBoxInput {
  display: none;
}

.customCheckBoxInput:checked + .customCheckBoxWrapper .customCheckBox {
  background-color: #2d6737;
  color: white;
  box-shadow: rgba(0, 0, 0, 0.23) 0px -4px 1px 0px inset, rgba(255, 255, 255, 0.17) 0px -1px 1px 0px, rgba(0, 0, 0, 0.17) 0px 2px 4px 1px;
}

.customCheckBoxInput:checked + .customCheckBoxWrapper .customCheckBox .inner {
  transform: translateY(-2px);
}

.customCheckBoxInput:checked + .customCheckBoxWrapper .customCheckBox:hover {
  background-color: #34723f;
  box-shadow: rgba(0, 0, 0, 0.26) 0px -4px 1px 0px inset, rgba(255, 255, 255, 0.17) 0px -1px 1px 0px, rgba(0, 0, 0, 0.15) 0px 3px 6px 2px;
}

.customCheckBoxWrapper .customCheckBox:hover .inner {
  transform: translateY(-2px);
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
                    url: "qrc:///example/res/html/Checkbox/Checkbox by Galahhad.html" // 设置要加载的网页URL
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
            code:'《label class="ui-bookmark">
    《input type="checkbox">
    《div class="bookmark">
      《svg viewBox="0 0 32 32">
        《g>
          《path d="M27 4v27a1 1 0 0 1-1.625.781L16 24.281l-9.375 7.5A1 1 0 0 1 5 31V4a4 4 0 0 1 4-4h14a4 4 0 0 1 4 4z">《/path>
        《/g>
      《/svg>
    《/div>
  《/label>'
        }
            CodeExpander{
                headerText: "CSS Source"
                Layout.fillWidth: true
                Layout.topMargin: -1
                code:'.ui-bookmark {
  --icon-size: 24px;
  --icon-secondary-color: rgb(77, 77, 77);
  --icon-hover-color: rgb(97, 97, 97);
  --icon-primary-color: gold;
  --icon-circle-border: 1px solid var(--icon-primary-color);
  --icon-circle-size: 35px;
  --icon-anmt-duration: 0.3s;
}

.ui-bookmark input {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  display: none;
}

.ui-bookmark .bookmark {
  width: var(--icon-size);
  height: auto;
  fill: var(--icon-secondary-color);
  cursor: pointer;
  -webkit-transition: 0.2s;
  -o-transition: 0.2s;
  transition: 0.2s;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  position: relative;
  -webkit-transform-origin: top;
  -ms-transform-origin: top;
  transform-origin: top;
}

.bookmark::after {
  content: "";
  position: absolute;
  width: 10px;
  height: 10px;
  -webkit-box-shadow: 0 30px 0 -4px var(--icon-primary-color),
    30px 0 0 -4px var(--icon-primary-color),
    0 -30px 0 -4px var(--icon-primary-color),
    -30px 0 0 -4px var(--icon-primary-color),
    -22px 22px 0 -4px var(--icon-primary-color),
    -22px -22px 0 -4px var(--icon-primary-color),
    22px -22px 0 -4px var(--icon-primary-color),
    22px 22px 0 -4px var(--icon-primary-color);
  box-shadow: 0 30px 0 -4px var(--icon-primary-color),
    30px 0 0 -4px var(--icon-primary-color),
    0 -30px 0 -4px var(--icon-primary-color),
    -30px 0 0 -4px var(--icon-primary-color),
    -22px 22px 0 -4px var(--icon-primary-color),
    -22px -22px 0 -4px var(--icon-primary-color),
    22px -22px 0 -4px var(--icon-primary-color),
    22px 22px 0 -4px var(--icon-primary-color);
  border-radius: 50%;
  -webkit-transform: scale(0);
  -ms-transform: scale(0);
  transform: scale(0);
}

.bookmark::before {
  content: "";
  position: absolute;
  border-radius: 50%;
  border: var(--icon-circle-border);
  opacity: 0;
}

/* actions */

.ui-bookmark:hover .bookmark {
  fill: var(--icon-hover-color);
}

.ui-bookmark input:checked + .bookmark::after {
  -webkit-animation: circles var(--icon-anmt-duration)
    cubic-bezier(0.175, 0.885, 0.32, 1.275) forwards;
  animation: circles var(--icon-anmt-duration)
    cubic-bezier(0.175, 0.885, 0.32, 1.275) forwards;
  -webkit-animation-delay: var(--icon-anmt-duration);
  animation-delay: var(--icon-anmt-duration);
}

.ui-bookmark input:checked + .bookmark {
  fill: var(--icon-primary-color);
  -webkit-animation: bookmark var(--icon-anmt-duration) forwards;
  animation: bookmark var(--icon-anmt-duration) forwards;
  -webkit-transition-delay: 0.3s;
  -o-transition-delay: 0.3s;
  transition-delay: 0.3s;
}

.ui-bookmark input:checked + .bookmark::before {
  -webkit-animation: circle var(--icon-anmt-duration)
    cubic-bezier(0.175, 0.885, 0.32, 1.275) forwards;
  animation: circle var(--icon-anmt-duration)
    cubic-bezier(0.175, 0.885, 0.32, 1.275) forwards;
  -webkit-animation-delay: var(--icon-anmt-duration);
  animation-delay: var(--icon-anmt-duration);
}

@-webkit-keyframes bookmark {
  50% {
    -webkit-transform: scaleY(0.6);
    transform: scaleY(0.6);
  }

  100% {
    -webkit-transform: scaleY(1);
    transform: scaleY(1);
  }
}

@keyframes bookmark {
  50% {
    -webkit-transform: scaleY(0.6);
    transform: scaleY(0.6);
  }

  100% {
    -webkit-transform: scaleY(1);
    transform: scaleY(1);
  }
}

@-webkit-keyframes circle {
  from {
    width: 0;
    height: 0;
    opacity: 0;
  }

  90% {
    width: var(--icon-circle-size);
    height: var(--icon-circle-size);
    opacity: 1;
  }

  to {
    opacity: 0;
  }
}

@keyframes circle {
  from {
    width: 0;
    height: 0;
    opacity: 0;
  }

  90% {
    width: var(--icon-circle-size);
    height: var(--icon-circle-size);
    opacity: 1;
  }

  to {
    opacity: 0;
  }
}

@-webkit-keyframes circles {
  from {
    -webkit-transform: scale(0);
    transform: scale(0);
  }

  40% {
    opacity: 1;
  }

  to {
    -webkit-transform: scale(0.8);
    transform: scale(0.8);
    opacity: 0;
  }
}

@keyframes circles {
  from {
    -webkit-transform: scale(0);
    transform: scale(0);
  }

  40% {
    opacity: 1;
  }

  to {
    -webkit-transform: scale(0.8);
    transform: scale(0.8);
    opacity: 0;
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
                        url: "qrc:///example/res/html/Checkbox/Checkbox by vishnupprajapat.html" // 设置要加载的网页URL
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
                code:'《div class="checkbox-wrapper-46">
  《input type="checkbox" id="cbx-46" class="inp-cbx" />
  《label for="cbx-46" class="cbx"
    >《span>
      《svg viewBox="0 0 12 10" height="10px" width="12px">
        《polyline points="1.5 6 4.5 9 10.5 1">《/polyline>《/svg>《/span
    >《span>Checkbox《/span>
  《/label>
《/div>
'
            }
                CodeExpander{
                    headerText: "CSS Source"
                    Layout.fillWidth: true
                    Layout.topMargin: -1
                    code:'.checkbox-wrapper-46 input[type="checkbox"] {
  display: none;
  visibility: hidden;
}

.checkbox-wrapper-46 .cbx {
  margin: auto;
  -webkit-user-select: none;
  user-select: none;
  cursor: pointer;
}
.checkbox-wrapper-46 .cbx span {
  display: inline-block;
  vertical-align: middle;
  transform: translate3d(0, 0, 0);
}
.checkbox-wrapper-46 .cbx span:first-child {
  position: relative;
  width: 18px;
  height: 18px;
  border-radius: 3px;
  transform: scale(1);
  vertical-align: middle;
  border: 1px solid #9098a9;
  transition: all 0.2s ease;
}
.checkbox-wrapper-46 .cbx span:first-child svg {
  position: absolute;
  top: 3px;
  left: 2px;
  fill: none;
  stroke: #ffffff;
  stroke-width: 2;
  stroke-linecap: round;
  stroke-linejoin: round;
  stroke-dasharray: 16px;
  stroke-dashoffset: 16px;
  transition: all 0.3s ease;
  transition-delay: 0.1s;
  transform: translate3d(0, 0, 0);
}
.checkbox-wrapper-46 .cbx span:first-child:before {
  content: "";
  width: 100%;
  height: 100%;
  background: #506eec;
  display: block;
  transform: scale(0);
  opacity: 1;
  border-radius: 50%;
}
.checkbox-wrapper-46 .cbx span:last-child {
  padding-left: 8px;
}
.checkbox-wrapper-46 .cbx:hover span:first-child {
  border-color: #506eec;
}

.checkbox-wrapper-46 .inp-cbx:checked + .cbx span:first-child {
  background: #506eec;
  border-color: #506eec;
  animation: wave-46 0.4s ease;
}
.checkbox-wrapper-46 .inp-cbx:checked + .cbx span:first-child svg {
  stroke-dashoffset: 0;
}
.checkbox-wrapper-46 .inp-cbx:checked + .cbx span:first-child:before {
  transform: scale(3.5);
  opacity: 0;
  transition: all 0.6s ease;
}

@keyframes wave-46 {
  50% {
    transform: scale(0.9);
  }
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
                            url: "qrc:///example/res/html/Checkbox/Checkbox by AyuuLima.html" // 设置要加载的网页URL
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
                    code:'《label class="container">
  《input checked="checked" type="checkbox" />
  《div class="checkmark">《/div>
《/label>
'
                }
                    CodeExpander{
                        headerText: "CSS Source"
                        Layout.fillWidth: true
                        Layout.topMargin: -1
                        code:'/* Hide the default checkbox */
.container input {
  display: none;
}

.container {
  display: block;
  position: relative;
  cursor: pointer;
  font-size: 30px;
  user-select: none;
  -webkit-tap-highlight-color: transparent;
}

.checkmark {
  position: relative;
  top: 0;
  left: 0;
  height: 1.3em;
  width: 1.3em;
  background-color: rgb(255, 255, 255);
  border-radius: 0.3em;
  transition: all 0.25s;
  --spread: 50px;
}

.container input:checked ~ .checkmark {
  background-color: #000000;
  box-shadow: -10px -10px var(--spread) 0px rgb(17, 0, 248),
    0 -10px var(--spread) 0px rgb(243, 11, 243),
    10px -10px var(--spread) 0px rgb(253, 228, 0),
    10px 0 var(--spread) 0px rgb(107, 255, 21),
    10px 10px var(--spread) 0px rgb(76, 0, 255),
    0 10px var(--spread) 0px rgb(255, 196, 0),
    -10px 10px var(--spread) 0px rgb(90, 105, 240);
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  transform: rotate(0deg);
  border: 0.1em solid rgba(0, 0, 0, 0.863);
  left: 0;
  top: 0;
  width: 1.1em;
  height: 1.1em;
  border-radius: 0.25em;
  transition: all 0.25s, border-width 0.1s;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
  left: 0.45em;
  top: 0.25em;
  width: 0.25em;
  height: 0.5em;
  border-color: rgba(238, 238, 238, 0) white white #fff0;
  border-width: 0 0.15em 0.15em 0;
  border-radius: 0em;
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
                                url: "qrc:///example/res/html/Checkbox/Checkbox by catraco2.html" // 设置要加载的网页URL
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
                        code:'《div class="heart-container" title="Like">
            《input type="checkbox" class="checkbox" id="Give-It-An-Id">
            《div class="svg-container">
                《svg viewBox="0 0 24 24" class="svg-outline" xmlns="http://www.w3.org/2000/svg">
                    《path d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Zm-3.585,18.4a2.973,2.973,0,0,1-3.83,0C4.947,16.006,2,11.87,2,8.967a4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,11,8.967a1,1,0,0,0,2,0,4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,22,8.967C22,11.87,19.053,16.006,13.915,20.313Z">
                    《/path>
                《/svg>
                《svg viewBox="0 0 24 24" class="svg-filled" xmlns="http://www.w3.org/2000/svg">
                    《path d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Z">
                    《/path>
                《/svg>
                《svg class="svg-celebrate" width="100" height="100" xmlns="http://www.w3.org/2000/svg">
                    《polygon points="10,10 20,20">《/polygon>
                    《polygon points="10,50 20,50">《/polygon>
                    《polygon points="20,80 30,70">《/polygon>
                    《polygon points="90,10 80,20">《/polygon>
                    《polygon points="90,50 80,50">《/polygon>
                    《polygon points="80,80 70,70">《/polygon>
                《/svg>
            《/div>
        《/div>'
                    }
                        CodeExpander{
                            headerText: "CSS Source"
                            Layout.fillWidth: true
                            Layout.topMargin: -1
                            code:'.heart-container {
  --heart-color: rgb(255, 91, 137);
  position: relative;
  width: 50px;
  height: 50px;
  transition: .3s;
}

.heart-container .checkbox {
  position: absolute;
  width: 100%;
  height: 100%;
  opacity: 0;
  z-index: 20;
  cursor: pointer;
}

.heart-container .svg-container {
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
}

.heart-container .svg-outline,
        .heart-container .svg-filled {
  fill: var(--heart-color);
  position: absolute;
}

.heart-container .svg-filled {
  animation: keyframes-svg-filled 1s;
  display: none;
}

.heart-container .svg-celebrate {
  position: absolute;
  animation: keyframes-svg-celebrate .5s;
  animation-fill-mode: forwards;
  display: none;
  stroke: var(--heart-color);
  fill: var(--heart-color);
  stroke-width: 2px;
}

.heart-container .checkbox:checked~.svg-container .svg-filled {
  display: block
}

.heart-container .checkbox:checked~.svg-container .svg-celebrate {
  display: block
}

@keyframes keyframes-svg-filled {
  0% {
    transform: scale(0);
  }

  25% {
    transform: scale(1.2);
  }

  50% {
    transform: scale(1);
    filter: brightness(1.5);
  }
}

@keyframes keyframes-svg-celebrate {
  0% {
    transform: scale(0);
  }

  50% {
    opacity: 1;
    filter: brightness(1.5);
  }

  100% {
    transform: scale(1.4);
    opacity: 0;
    display: none;
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
                                    url: "qrc:///example/res/html/Checkbox/Checkbox by andrew-demchenk0.html" // 设置要加载的网页URL
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
                            code:'《label class="container">
  《input type="checkbox">
  《svg id="Glyph" version="1.1" viewBox="0 0 32 32" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">《path d="M29.845,17.099l-2.489,8.725C26.989,27.105,25.804,28,24.473,28H11c-0.553,0-1-0.448-1-1V13  c0-0.215,0.069-0.425,0.198-0.597l5.392-7.24C16.188,4.414,17.05,4,17.974,4C19.643,4,21,5.357,21,7.026V12h5.002  c1.265,0,2.427,0.579,3.188,1.589C29.954,14.601,30.192,15.88,29.845,17.099z" id="XMLID_254_">《/path>《path d="M7,12H3c-0.553,0-1,0.448-1,1v14c0,0.552,0.447,1,1,1h4c0.553,0,1-0.448,1-1V13C8,12.448,7.553,12,7,12z   M5,25.5c-0.828,0-1.5-0.672-1.5-1.5c0-0.828,0.672-1.5,1.5-1.5c0.828,0,1.5,0.672,1.5,1.5C6.5,24.828,5.828,25.5,5,25.5z" id="XMLID_256_">《/path>《/svg>
《/label>'
                        }
                            CodeExpander{
                                headerText: "CSS Source"
                                Layout.fillWidth: true
                                Layout.topMargin: -1
                                code:'.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

.container {
  display: block;
  position: relative;
  cursor: pointer;
  user-select: none;
}

svg {
  position: relative;
  top: 0;
  left: 0;
  height: 50px;
  width: 50px;
  transition: all 0.3s;
  fill: #666;
}

svg:hover {
  transform: scale(1.1) rotate(-10deg);
}

.container input:checked ~ svg {
  fill: #2196F3;
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
                                        url: "qrc:///example/res/html/Checkbox/Checkbox by UmangLadha.html" // 设置要加载的网页URL
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
                                code:'《div class="checkbox-wrapper">
  《input style="display: none;" type="checkbox" id="cbx" class="inp-cbx" />
  《label for="cbx" class="cbx">
    《span>
      《svg viewBox="0 0 12 9" height="9px" width="12px">
        《polyline points="1 5 4 8 11 1">《/polyline>
      《/svg>
    《/span>
    《span>To-do《/span>
  《/label>
《/div>
'
                            }
                                CodeExpander{
                                    headerText: "CSS Source"
                                    Layout.fillWidth: true
                                    Layout.topMargin: -1
                                    code:'.checkbox-wrapper .cbx {
  -webkit-user-select: none;
  user-select: none;
  -webkit-tap-highlight-color: transparent;
  cursor: pointer;
}
.checkbox-wrapper .cbx span {
  display: inline-block;
  vertical-align: middle;
  transform: translate3d(0, 0, 0);
}
.checkbox-wrapper .cbx span:first-child {
  position: relative;
  width: 24px;
  height: 24px;
  border-radius: 50%;
  transform: scale(1);
  vertical-align: middle;
  border: 1px solid #b9b8c3;
  transition: all 0.2s ease;
}
.checkbox-wrapper .cbx span:first-child svg {
  position: absolute;
  z-index: 1;
  top: 8px;
  left: 6px;
  fill: none;
  stroke: white;
  stroke-width: 2;
  stroke-linecap: round;
  stroke-linejoin: round;
  stroke-dasharray: 16px;
  stroke-dashoffset: 16px;
  transition: all 0.3s ease;
  transition-delay: 0.1s;
  transform: translate3d(0, 0, 0);
}
.checkbox-wrapper .cbx span:first-child:before {
  content: "";
  width: 100%;
  height: 100%;
  background: #506eec;
  display: block;
  transform: scale(0);
  opacity: 1;
  border-radius: 50%;
  transition-delay: 0.2s;
}
.checkbox-wrapper .cbx span:last-child {
  margin-left: 8px;
}
.checkbox-wrapper .cbx span:last-child:after {
  content: "";
  position: absolute;
  top: 8px;
  left: 0;
  height: 1px;
  width: 100%;
  background: #b9b8c3;
  transform-origin: 0 0;
  transform: scaleX(0);
}
.checkbox-wrapper .cbx:hover span:first-child {
  border-color: #3c53c7;
}

.checkbox-wrapper .inp-cbx:checked + .cbx span:first-child {
  border-color: #3c53c7;
  background: #3c53c7;
  animation: check-15 0.6s ease;
}
.checkbox-wrapper .inp-cbx:checked + .cbx span:first-child svg {
  stroke-dashoffset: 0;
}
.checkbox-wrapper .inp-cbx:checked + .cbx span:first-child:before {
  transform: scale(2.2);
  opacity: 0;
  transition: all 0.6s ease;
}
.checkbox-wrapper .inp-cbx:checked + .cbx span:last-child {
  color: #b9b8c3;
  transition: all 0.3s ease;
}
.checkbox-wrapper .inp-cbx:checked + .cbx span:last-child:after {
  transform: scaleX(1);
  transition: all 0.3s ease;
}

@keyframes check-15 {
  50% {
    transform: scale(1.2);
  }
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
                                            url:"qrc:///example/res/html/Checkbox/Checkbox by ercnersoy.html" // 设置要加载的网页URL
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
                                    code:'《label class="container">
  《input checked="checked" type="checkbox">
  《div class="checkmark">《/div>
《/label>'
                                }
                                    CodeExpander{
                                        headerText: "CSS Source"
                                        Layout.fillWidth: true
                                        Layout.topMargin: -1
                                        code:'/* Hide the default checkbox */
.container input {
 position: absolute;
 opacity: 0;
 cursor: pointer;
 height: 0;
 width: 0;
}

.container {
 display: block;
 position: relative;
 cursor: pointer;
 font-size: 20px;
 user-select: none;
}

/* Create a custom checkbox */
.checkmark {
 position: relative;
 top: 0;
 left: 0;
 height: 1.4em;
 width: 1.4em;
 border: 2px solid #2196F3;
 border-radius: 1rem 0rem 1rem;
 transform: rotate(45deg);
 transition: all .5s ease-in-out;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
 box-shadow: 0px 0px 40px 5px #2196F3;
 border-radius: 1rem 0rem 1rem;
 background-color: #2195f31f;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
 content: "";
 position: absolute;
 display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
 display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
 left: 0.35em;
 top: 0.20em;
 width: 0.25em;
 height: 0.5em;
 border: solid #2196F3;
 border-width: 0 0.15em 0.15em 0;
 transform: rotate(-5deg);
 animation: upAnimate 0.5s cubic-bezier(0.165, 0.84, 0.44, 1);
}

@keyframes upAnimate {
 from {
  transform: translate(-20px, -20px) rotate(-5deg);
  opacity: 0;
 }

 to {
  transform: translate(0, 0) rotate(-5deg);
  opacity: 1;
 }
}'
                                    }

}

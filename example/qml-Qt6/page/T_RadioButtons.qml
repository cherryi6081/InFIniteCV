import QtQuick
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Controls.Basic
import QtWebView
import FluentUI
import "qrc:///example/qml/component"

FluScrollablePage{

    title:"Radio Button"

    FluText{
        Layout.topMargin: 20
        text:"支持Tab键切换焦点，空格键执行点击事件"
    }
    FluArea{
        Layout.fillWidth: true
        height: 150
        paddings: 10
        Layout.topMargin: 20
            WebView {
                anchors.fill: parent
                anchors{
                    verticalCenter: parent.verticalCenter
                    left: parent.left
                }
                url: "qrc:///example/res/html/RadioButton/Radio by SelfMadeSystem.html" // 设置要加载的网页URL
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
        code:'《div class="rating">
  《input type="radio" id="star-1" name="star-radio" value="star-1">
  《label for="star-1">
    《svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">《path pathLength="360" d="M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z">《/path>《/svg>
  《/label>
  《input type="radio" id="star-2" name="star-radio" value="star-1">
  《label for="star-2">
    《svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">《path pathLength="360" d="M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z">《/path>《/svg>
  《/label>
  《input type="radio" id="star-3" name="star-radio" value="star-1">
  《label for="star-3">
    《svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">《path pathLength="360" d="M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z">《/path>《/svg>
  《/label>
  《input type="radio" id="star-4" name="star-radio" value="star-1">
  《label for="star-4">
    《svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">《path pathLength="360" d="M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z">《/path>《/svg>
  《/label>
  《input type="radio" id="star-5" name="star-radio" value="star-1">
  《label for="star-5">
    《svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">《path pathLength="360" d="M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z">《/path>《/svg>
  《/label>
《/div>'
    }
        CodeExpander{
            headerText: "CSS Source"
            Layout.fillWidth: true
            Layout.topMargin: -1
            code:'.rating {
  display: flex;
  flex-direction: row-reverse;
  gap: 0.3rem;
  --stroke: #666;
  --fill: #ffc73a;
}

.rating input {
  appearance: unset;
}

.rating label {
  cursor: pointer;
}

.rating svg {
  width: 2rem;
  height: 2rem;
  overflow: visible;
  fill: transparent;
  stroke: var(--stroke);
  stroke-linejoin: bevel;
  stroke-dasharray: 12;
  animation: idle 4s linear infinite;
  transition: stroke 0.2s, fill 0.5s;
}

@keyframes idle {
  from {
    stroke-dashoffset: 24;
  }
}

.rating label:hover svg {
  stroke: var(--fill);
}

.rating input:checked ~ label svg {
  transition: 0s;
  animation: idle 4s linear infinite, yippee 0.75s backwards;
  fill: var(--fill);
  stroke: var(--fill);
  stroke-opacity: 0;
  stroke-dasharray: 0;
  stroke-linejoin: miter;
  stroke-width: 8px;
}

@keyframes yippee {
  0% {
    transform: scale(1);
    fill: var(--fill);
    fill-opacity: 0;
    stroke-opacity: 1;
    stroke: var(--stroke);
    stroke-dasharray: 10;
    stroke-width: 1px;
    stroke-linejoin: bevel;
  }

  30% {
    transform: scale(0);
    fill: var(--fill);
    fill-opacity: 0;
    stroke-opacity: 1;
    stroke: var(--stroke);
    stroke-dasharray: 10;
    stroke-width: 1px;
    stroke-linejoin: bevel;
  }

  30.1% {
    stroke: var(--fill);
    stroke-dasharray: 0;
    stroke-linejoin: miter;
    stroke-width: 8px;
  }

  60% {
    transform: scale(1.2);
    fill: var(--fill);
  }
}
'
        }
        FluArea{
            Layout.fillWidth: true
            height: 150
            paddings: 10
            Layout.topMargin: 20
                WebView {
                    anchors.fill: parent
                    anchors{
                        verticalCenter: parent.verticalCenter
                        left: parent.left
                    }
                    url: "qrc:///example/res/html/RadioButton/Radio by Yaya12085.html" // 设置要加载的网页URL
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
            code:'《div class="radio-inputs">
  《label class="radio">
    《input type="radio" name="radio" checked="">
    《span class="name">HTML《/span>
  《/label>
  《label class="radio">
    《input type="radio" name="radio">
    《span class="name">React《/span>
  《/label>

  《label class="radio">
    《input type="radio" name="radio">
    《span class="name">Vue《/span>
  《/label>
《/div>'
        }
            CodeExpander{
                headerText: "CSS Source"
                Layout.fillWidth: true
                Layout.topMargin: -1
                code:'.radio-inputs {
  position: relative;
  display: flex;
  flex-wrap: wrap;
  border-radius: 0.5rem;
  background-color: #EEE;
  box-sizing: border-box;
  box-shadow: 0 0 0px 1px rgba(0, 0, 0, 0.06);
  padding: 0.25rem;
  width: 300px;
  font-size: 14px;
}

.radio-inputs .radio {
  flex: 1 1 auto;
  text-align: center;
}

.radio-inputs .radio input {
  display: none;
}

.radio-inputs .radio .name {
  display: flex;
  cursor: pointer;
  align-items: center;
  justify-content: center;
  border-radius: 0.5rem;
  border: none;
  padding: .5rem 0;
  color: rgba(51, 65, 85, 1);
  transition: all .15s ease-in-out;
}

.radio-inputs .radio input:checked + .name {
  background-color: #fff;
  font-weight: 600;
}'
            }
            FluArea{
                Layout.fillWidth: true
                height: 150
                paddings: 10
                Layout.topMargin: 20
                    WebView {
                        anchors.fill: parent
                        anchors{
                            verticalCenter: parent.verticalCenter
                            left: parent.left
                        }
                        url: "qrc:///example/res/html/RadioButton/Radio by Pradeepsaranbishnoi.html" // 设置要加载的网页URL
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
                code:'《div class="container">
    《div class="tabs">
        《input type="radio" id="radio-1" name="tabs" checked="">
        《label class="tab" for="radio-1">Hello《span class="notification">2《/span>《/label>
        《input type="radio" id="radio-2" name="tabs">
        《label class="tab" for="radio-2">UI《/label>
        《input type="radio" id="radio-3" name="tabs">
        《label class="tab" for="radio-3">World《/label>
        《span class="glider">《/span>
    《/div>
《/div>'
            }
                CodeExpander{
                    headerText: "CSS Source"
                    Layout.fillWidth: true
                    Layout.topMargin: -1
                    code:'.tabs {
  display: flex;
  position: relative;
  background-color: #fff;
  box-shadow: 0 0 1px 0 rgba(24, 94, 224, 0.15), 0 6px 12px 0 rgba(24, 94, 224, 0.15);
  padding: 0.75rem;
  border-radius: 99px;
}

.tabs * {
  z-index: 2;
}

.container input[type="radio"] {
  display: none;
}

.tab {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 30px;
  width: 50px;
  font-size: .8rem;
  color: black;
  font-weight: 500;
  border-radius: 99px;
  cursor: pointer;
  transition: color 0.15s ease-in;
}

.notification {
  display: flex;
  align-items: center;
  justify-content: center;
  width: .8rem;
  height: .8rem;
  position: absolute;
  top: 10px;
  left: 30%;
  font-size: 10px;
  margin-left: 0.75rem;
  border-radius: 50%;
  margin: 0px;
  background-color: #e6eef9;
  transition: 0.15s ease-in;
}

.container input[type="radio"]:checked + label {
  color: #185ee0;
}

.container input[type="radio"]:checked + label > .notification {
  background-color: #185ee0;
  color: #fff;
  margin: 0px;
}

.container input[id="radio-1"]:checked ~ .glider {
  transform: translateX(0);
}

.container input[id="radio-2"]:checked ~ .glider {
  transform: translateX(100%);
}

.container input[id="radio-3"]:checked ~ .glider {
  transform: translateX(200%);
}

.glider {
  position: absolute;
  display: flex;
  height: 30px;
  width: 50px;
  background-color: #e6eef9;
  z-index: 1;
  border-radius: 99px;
  transition: 0.25s ease-out;
}

@media (max-width: 700px) {

  .tabs {
    transform: scale(0.6);
  }
}
'
                }
                FluArea{
                    Layout.fillWidth: true
                    height: 150
                    paddings: 10
                    Layout.topMargin: 20
                        WebView {
                            anchors.fill: parent
                            anchors{
                                verticalCenter: parent.verticalCenter
                                left: parent.left
                            }
                            url: "qrc:///example/res/html/RadioButton/Radio by andrew-demchenk0.html" // 设置要加载的网页URL
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
                    code:'《div class="container">
  《div class="radio-wrapper">
    《input class="input" name="btn" id="value-1" type="radio">
    《div class="btn">
      《span aria-hidden="">_《/span>Cyber
      《span class="btn__glitch" aria-hidden="">_Cyber🦾《/span>
      《label class="number">r1《/label>
    《/div>
  《/div>
  《div class="radio-wrapper">
    《input class="input" name="btn" id="value-2" checked="true" type="radio">
    《div class="btn">
      _Radio《span aria-hidden="">_《/span>
      《span class="btn__glitch" aria-hidden="">_R_a_d_i_o_《/span>
      《label class="number">r2《/label>
    《/div>
  《/div>
  《div class="radio-wrapper">
    《input class="input" name="btn" id="value-3" type="radio">
    《div class="btn">
      Buttons《span aria-hidden="">《/span>
      《span class="btn__glitch" aria-hidden="">Buttons_《/span>
      《label class="number">r3《/label>
    《/div>
  《/div>
《/div>

'
                }
                    CodeExpander{
                        headerText: "CSS Source"
                        Layout.fillWidth: true
                        Layout.topMargin: -1
                        code:'.container {
  display: flex;
  flex-direction: row;
}

.radio-wrapper {
  position: relative;
  height: 38px;
  width: 84px;
  margin: 3px;
}

.radio-wrapper .input {
  position: absolute;
  height: 100%;
  width: 100%;
  margin: 0;
  cursor: pointer;
  z-index: 10;
  opacity: 0;
}

.btn {
  --primary: #ff184c;
  --shadow-primary: #fded00;
  --color: white;
  --font-size: 9px;
  --shadow-primary-hue: 180;
  --shadow-secondary-hue: 60;
  --shadow-secondary: hsl(var(--shadow-secondary-hue), 90%, 60%);
  --clip: polygon(11% 0, 95% 0, 100% 25%, 90% 90%, 95% 90%, 85% 90%, 85% 100%, 7% 100%, 0 80%);
  --border: 5px;
  --shimmy-distance: 5;
  --clip-one: polygon(0 2%, 100% 2%, 100% 95%, 95% 95%, 95% 90%, 85% 90%, 85% 95%, 8% 95%, 0 70%);
  --clip-two: polygon(0 78%, 100% 78%, 100% 100%, 95% 100%, 95% 90%, 85% 90%, 85% 100%, 8% 100%, 0 78%);
  --clip-three: polygon(0 44%, 100% 44%, 100% 54%, 95% 54%, 95% 54%, 85% 54%, 85% 54%, 8% 54%, 0 54%);
  --clip-four: polygon(0 0, 100% 0, 100% 0, 95% 0, 95% 0, 85% 0, 85% 0, 8% 0, 0 0);
  --clip-five: polygon(0 0, 100% 0, 100% 0, 95% 0, 95% 0, 85% 0, 85% 0, 8% 0, 0 0);
  --clip-six: polygon(0 40%, 100% 40%, 100% 85%, 95% 85%, 95% 85%, 85% 85%, 85% 85%, 8% 85%, 0 70%);
  --clip-seven: polygon(0 63%, 100% 63%, 100% 80%, 95% 80%, 95% 80%, 85% 80%, 85% 80%, 8% 80%, 0 70%);
  color: var(--color);
  text-transform: uppercase;
  font-size: var(--font-size);
  letter-spacing: 3px;
  position: relative;
  font-weight: 900;
  width: 100%;
  height: 100%;
  line-height: 38px;
  text-align: center;
  transition: background 0.2s, 0.3s;
}

.input:checked + .btn {
  --primary: #8B00FF;
  --shadow-primary: #00e572;
}

.input:hover + .btn {
  --primary: #cc133c;
  --font-size: 11px;
}

.btn:after, .btn:before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  clip-path: var(--clip);
  z-index: -1;
}

.btn:before {
  background: var(--shadow-primary);
  transform: translate(var(--border), 0);
}

.btn:after {
  background: var(--primary);
}

.btn__tag {
  position: absolute;
  padding: 1px 4px;
  letter-spacing: 1px;
  line-height: 1;
  bottom: -5%;
  right: 5%;
  font-weight: normal;
  color: hsl(0, 0%, 0%);
  font-size: var(--label-size);
}

.btn__glitch {
  position: absolute;
  top: calc(var(--border) * -1);
  left: calc(var(--border) * -1);
  right: calc(var(--border) * -1);
  bottom: calc(var(--border) * -1);
  background: var(--shadow-primary);
  text-shadow: 2px 2px var(--shadow-primary), -2px -2px var(--shadow-secondary);
  clip-path: var(--clip);
  animation: glitch 2s infinite;
  display: none;
}

.input:hover + .btn .btn__glitch {
  display: block;
}

.input:checked + .btn .btn__glitch {
  display: block;
  animation: glitch 5s            FluArea{
                Layout.fillWidth: true
                height: 150
                paddings: 10
                Layout.topMargin: 20
                    WebView {
                        anchors.fill: parent
                        anchors{
                            verticalCenter: parent.verticalCenter
                            left: parent.left
                        }
                        url: "qrc:///example/res/html/RadioButton/Radio by HARIPRASAD-2003.html" // 设置要加载的网页URL
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
                code:""
            }
                CodeExpander{
                    headerText: "CSS Source"
                    Layout.fillWidth: true
                    Layout.topMargin: -1
                    code:""
                } infinite;
}

.btn__glitch:before {
  content: "";
  position: absolute;
  top: calc(var(--border) * 1);
  right: calc(var(--border) * 1);
  bottom: calc(var(--border) * 1);
  left: calc(var(--border) * 1);
  clip-path: var(--clip);
  background: var(--primary);
  z-index: -1;
}

@keyframes glitch {
  0% {
    clip-path: var(--clip-one);
  }

  2%, 8% {
    clip-path: var(--clip-two);
    transform: translate(calc(var(--shimmy-distance) * -1%), 0);
  }

  6% {
    clip-path: var(--clip-two);
    transform: translate(calc(var(--shimmy-distance) * 1%), 0);
  }

  9% {
    clip-path: var(--clip-two);
    transform: translate(0, 0);
  }

  10% {
    clip-path: var(--clip-three);
    transform: translate(calc(var(--shimmy-distance) * 1%), 0);
  }

  13% {
    clip-path: var(--clip-three);
    transform: translate(0, 0);
  }

  14%, 21% {
    clip-path: var(--clip-four);
    transform: translate(calc(var(--shimmy-distance) * 1%), 0);
  }

  25% {
    clip-path: var(--clip-five);
    transform: translate(calc(var(--shimmy-distance) * 1%), 0);
  }

  30% {
    clip-path: var(--clip-five);
    transform: translate(calc(var(--shimmy-distance) * -1%), 0);
  }

  35%, 45% {
    clip-path: var(--clip-six);
    transform: translate(calc(var(--shimmy-distance) * -1%));
  }

  40% {
    clip-path: var(--clip-six);
    transform: translate(calc(var(--shimmy-distance) * 1%));
  }

  50% {
    clip-path: var(--clip-six);
    transform: translate(0, 0);
  }

  55% {
    clip-path: var(--clip-seven);
    transform: translate(calc(var(--shimmy-distance) * 1%), 0);
  }

  60% {
    clip-path: var(--clip-seven);
    transform: translate(0, 0);
  }

  31%, 61%, 100% {
    clip-path: var(--clip-four);
  }
}

.number {
  background: var(--shadow-primary);
  color: #323232;
  font-size: 5.5px;
  font-weight: 700;
  letter-spacing: 1px;
  position: absolute;
  width: 15px;
  height: 6px;
  top: 0;
  left: 81%;
  line-height: 6.2px;
}
'
                    }
                    FluArea{
                        Layout.fillWidth: true
                        height: 220
                        paddings: 10
                        Layout.topMargin: 20
                            WebView {
                                anchors.fill: parent
                                anchors{
                                    verticalCenter: parent.verticalCenter
                                    left: parent.left
                                }
                                url: "qrc:///example/res/html/RadioButton/Radio by HARIPRASAD-2003.html" // 设置要加载的网页URL
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
                        code:'《div class="input">
  《button class="value">
    《svg
      viewBox="0 0 16 16"
      xmlns="http://www.w3.org/2000/svg"
      data-name="Layer 2"
    >
      《path
        fill="#7D8590"
        d="m1.5 13v1a.5.5 0 0 0 .3379.4731 18.9718 18.9718 0 0 0 6.1621 1.0269 18.9629 18.9629 0 0 0 6.1621-1.0269.5.5 0 0 0 .3379-.4731v-1a6.5083 6.5083 0 0 0 -4.461-6.1676 3.5 3.5 0 1 0 -4.078 0 6.5083 6.5083 0 0 0 -4.461 6.1676zm4-9a2.5 2.5 0 1 1 2.5 2.5 2.5026 2.5026 0 0 1 -2.5-2.5zm2.5 3.5a5.5066 5.5066 0 0 1 5.5 5.5v.6392a18.08 18.08 0 0 1 -11 0v-.6392a5.5066 5.5066 0 0 1 5.5-5.5z"
      >《/path>
    《/svg>
    Profile
  《/button>
  《button class="value">
    《svg id="Line" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
      《path
        fill="#7D8590"
        id="XMLID_1646_"
        d="m17.074 30h-2.148c-1.038 0-1.914-.811-1.994-1.846l-.125-1.635c-.687-.208-1.351-.484-1.985-.824l-1.246 1.067c-.788.677-1.98.631-2.715-.104l-1.52-1.52c-.734-.734-.78-1.927-.104-2.715l1.067-1.246c-.34-.635-.616-1.299-.824-1.985l-1.634-.125c-1.035-.079-1.846-.955-1.846-1.993v-2.148c0-1.038.811-1.914 1.846-1.994l1.635-.125c.208-.687.484-1.351.824-1.985l-1.068-1.247c-.676-.788-.631-1.98.104-2.715l1.52-1.52c.734-.734 1.927-.779 2.715-.104l1.246 1.067c.635-.34 1.299-.616 1.985-.824l.125-1.634c.08-1.034.956-1.845 1.994-1.845h2.148c1.038 0 1.914.811 1.994 1.846l.125 1.635c.687.208 1.351.484 1.985.824l1.246-1.067c.787-.676 1.98-.631 2.715.104l1.52 1.52c.734.734.78 1.927.104 2.715l-1.067 1.246c.34.635.616 1.299.824 1.985l1.634.125c1.035.079 1.846.955 1.846 1.993v2.148c0 1.038-.811 1.914-1.846 1.994l-1.635.125c-.208.687-.484 1.351-.824 1.985l1.067 1.246c.677.788.631 1.98-.104 2.715l-1.52 1.52c-.734.734-1.928.78-2.715.104l-1.246-1.067c-.635.34-1.299.616-1.985.824l-.125 1.634c-.079 1.035-.955 1.846-1.993 1.846zm-5.835-6.373c.848.53 1.768.912 2.734 1.135.426.099.739.462.772.898l.18 2.341 2.149-.001.18-2.34c.033-.437.347-.8.772-.898.967-.223 1.887-.604 2.734-1.135.371-.232.849-.197 1.181.089l1.784 1.529 1.52-1.52-1.529-1.784c-.285-.332-.321-.811-.089-1.181.53-.848.912-1.768 1.135-2.734.099-.426.462-.739.898-.772l2.341-.18h-.001v-2.148l-2.34-.18c-.437-.033-.8-.347-.898-.772-.223-.967-.604-1.887-1.135-2.734-.232-.37-.196-.849.089-1.181l1.529-1.784-1.52-1.52-1.784 1.529c-.332.286-.81.321-1.181.089-.848-.53-1.768-.912-2.734-1.135-.426-.099-.739-.462-.772-.898l-.18-2.341-2.148.001-.18 2.34c-.033.437-.347.8-.772.898-.967.223-1.887.604-2.734 1.135-.37.232-.849.197-1.181-.089l-1.785-1.529-1.52 1.52 1.529 1.784c.285.332.321.811.089 1.181-.53.848-.912 1.768-1.135 2.734-.099.426-.462.739-.898.772l-2.341.18.002 2.148 2.34.18c.437.033.8.347.898.772.223.967.604 1.887 1.135 2.734.232.37.196.849-.089 1.181l-1.529 1.784 1.52 1.52 1.784-1.529c.332-.287.813-.32 1.18-.089z"
      >《/path>
      《path
        id="XMLID_1645_"
        fill="#7D8590"
        d="m16 23c-3.859 0-7-3.141-7-7s3.141-7 7-7 7 3.141 7 7-3.141 7-7 7zm0-12c-2.757 0-5 2.243-5 5s2.243 5 5 5 5-2.243 5-5-2.243-5-5-5z"
      >《/path>
    《/svg>
    Account
  《/button>
  《button class="value">
    《svg viewBox="0 0 128 128" xmlns="http://www.w3.org/2000/svg">
      《path
        fill="#7D8590"
        d="m109.9 20.63a6.232 6.232 0 0 0 -8.588-.22l-57.463 51.843c-.012.011-.02.024-.031.035s-.023.017-.034.027l-4.721 4.722a1.749 1.749 0 0 0 0 2.475l.341.342-3.16 3.16a8 8 0 0 0 -1.424 1.967 11.382 11.382 0 0 0 -12.055 10.609c-.006.036-.011.074-.015.111a5.763 5.763 0 0 1 -4.928 5.41 1.75 1.75 0 0 0 -.844 3.14c4.844 3.619 9.4 4.915 13.338 4.915a17.14 17.14 0 0 0 11.738-4.545l.182-.167a11.354 11.354 0 0 0 3.348-8.081c0-.225-.02-.445-.032-.667a8.041 8.041 0 0 0 1.962-1.421l3.16-3.161.342.342a1.749 1.749 0 0 0 2.475 0l4.722-4.722c.011-.011.018-.025.029-.036s.023-.018.033-.029l51.844-57.46a6.236 6.236 0 0 0 -.219-8.589zm-70.1 81.311-.122.111c-.808.787-7.667 6.974-17.826 1.221a9.166 9.166 0 0 0 4.36-7.036 1.758 1.758 0 0 0 .036-.273 7.892 7.892 0 0 1 9.122-7.414c.017.005.031.014.048.019a1.717 1.717 0 0 0 .379.055 7.918 7.918 0 0 1 4 13.317zm5.239-10.131c-.093.093-.194.176-.293.26a11.459 11.459 0 0 0 -6.289-6.286c.084-.1.167-.2.261-.3l3.161-3.161 6.321 6.326zm7.214-4.057-9.479-9.479 2.247-2.247 9.479 9.479zm55.267-60.879-50.61 56.092-9.348-9.348 56.092-50.61a2.737 2.737 0 0 1 3.866 3.866z"
      >《/path>
    《/svg>
    Appearance
  《/button>
  《button class="value">
    《svg id="svg8" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
      《g id="layer1" transform="translate(-33.022 -30.617)">
        《path
          fill="#7D8590"
          id="path26276"
          d="m49.021 31.617c-2.673 0-4.861 2.188-4.861 4.861 0 1.606.798 3.081 1.873 3.834h-7.896c-1.7 0-3.098 1.401-3.098 3.1s1.399 3.098 3.098 3.098h4.377l.223 2.641s-1.764 8.565-1.764 8.566c-.438 1.642.55 3.355 2.191 3.795s3.327-.494 3.799-2.191l2.059-5.189 2.059 5.189c.44 1.643 2.157 2.631 3.799 2.191s2.63-2.153 2.191-3.795l-1.764-8.566.223-2.641h4.377c1.699 0 3.098-1.399 3.098-3.098s-1.397-3.1-3.098-3.1h-7.928c1.102-.771 1.904-2.228 1.904-3.834 0-2.672-2.189-4.861-4.862-4.861zm0 2c1.592 0 2.861 1.27 2.861 2.861 0 1.169-.705 2.214-1.789 2.652-.501.203-.75.767-.563 1.273l.463 1.254c.145.393.519.654.938.654h8.975c.626 0 1.098.473 1.098 1.1s-.471 1.098-1.098 1.098h-5.297c-.52 0-.952.398-.996.916l-.311 3.701c-.008.096-.002.191.018.285 0 0 1.813 8.802 1.816 8.82.162.604-.173 1.186-.777 1.348s-1.184-.173-1.346-.777c-.01-.037-3.063-7.76-3.063-7.76-.334-.842-1.525-.842-1.859 0 0 0-3.052 7.723-3.063 7.76-.162.604-.741.939-1.346.777s-.939-.743-.777-1.348c.004-.019 1.816-8.82 1.816-8.82.02-.094.025-.189.018-.285l-.311-3.701c-.044-.518-.477-.916-.996-.916h-5.297c-.627 0-1.098-.471-1.098-1.098s.472-1.1 1.098-1.1h8.975c.419 0 .793-.262.938-.654l.463-1.254c.188-.507-.062-1.07-.563-1.273-1.084-.438-1.789-1.483-1.789-2.652.001-1.591 1.271-2.861 2.862-2.861z"
        >《/path>
      《/g>
    《/svg>
    Accessibility
  《/button>
  《button class="value">
    《svg fill="none" viewBox="0 0 24 25" xmlns="http://www.w3.org/2000/svg">
      《path
        clip-rule="evenodd"
        d="m11.9572 4.31201c-3.35401 0-6.00906 2.59741-6.00906 5.67742v3.29037c0 .1986-.05916.3927-.16992.5576l-1.62529 2.4193-.01077.0157c-.18701.2673-.16653.5113-.07001.6868.10031.1825.31959.3528.67282.3528h14.52603c.2546 0 .5013-.1515.6391-.3968.1315-.2343.1117-.4475-.0118-.6093-.0065-.0085-.0129-.0171-.0191-.0258l-1.7269-2.4194c-.121-.1695-.186-.3726-.186-.5809v-3.29037c0-1.54561-.6851-3.023-1.7072-4.00431-1.1617-1.01594-2.6545-1.67311-4.3019-1.67311zm-8.00906 5.67742c0-4.27483 3.64294-7.67742 8.00906-7.67742 2.2055 0 4.1606.88547 5.6378 2.18455.01.00877.0198.01774.0294.02691 1.408 1.34136 2.3419 3.34131 2.3419 5.46596v2.97007l1.5325 2.1471c.6775.8999.6054 1.9859.1552 2.7877-.4464.795-1.3171 1.4177-2.383 1.4177h-14.52603c-2.16218 0-3.55087-2.302-2.24739-4.1777l1.45056-2.1593zm4.05187 11.32257c0-.5523.44772-1 1-1h5.99999c.5523 0 1 .4477 1 1s-.4477 1-1 1h-5.99999c-.55228 0-1-.4477-1-1z"
        fill="#7D8590"
        fill-rule="evenodd"
      >《/path>
    《/svg>
    Notifications
  《/button>
《/div>
'
                    }
                        CodeExpander{
                            headerText: "CSS Source"
                            Layout.fillWidth: true
                            Layout.topMargin: -1
                            code:'.input {
  display: flex;
  flex-direction: column;
  width: 200px;
  background-color: #0d1117;
  justify-content: center;
  border-radius: 5px;
}

.value {
  background-color: transparent;
  border: none;
  padding: 10px;
  color: white;
  display: flex;
  position: relative;
  gap: 5px;
  cursor: pointer;
  border-radius: 4px;
}

.value:not(:active):hover,
.value:focus {
  background-color: #21262c;
}

.value:focus,
.value:active {
  background-color: #1a1f24;
  outline: none;
}

.value::before {
  content: "";
  position: absolute;
  top: 5px;
  left: -10px;
  width: 5px;
  height: 80%;
  background-color: #2f81f7;
  border-radius: 5px;
  opacity: 0;
}

.value:focus::before,
.value:active::before {
  opacity: 1;
}

.value svg {
  width: 15px;
}
'
                        }
                        FluArea{
                            Layout.fillWidth: true
                            height: 150
                            paddings: 10
                            Layout.topMargin: 20
                                WebView {
                                    anchors.fill: parent
                                    anchors{
                                        verticalCenter: parent.verticalCenter
                                        left: parent.left
                                    }
                                    url: "qrc:///example/res/html/RadioButton/Radio by Yaya12085 .html" // 设置要加载的网页URL
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
                            code:'《div class="radio-input">
  《label>
  《input type="radio" id="value-1" name="value-radio" value="value-1">
  《span>Option 1《/span>
  《/label>
  《label>
    《input type="radio" id="value-2" name="value-radio" value="value-2">
  《span>Option 2《/span>
  《/label>
  《label>
    《input type="radio" id="value-3" name="value-radio" value="value-3">
  《span>Option 3《/span>
  《/label>
  《span class="selection">《/span>
《/div>'
                        }
                            CodeExpander{
                                headerText: "CSS Source"
                                Layout.fillWidth: true
                                Layout.topMargin: -1
                                code:'.radio-input input {
  display: none;
}

.radio-input {
  --container_width: 300px;
  position: relative;
  display: flex;
  align-items: center;
  border-radius: 10px;
  background-color: #fff;
  color: #000000;
  width: var(--container_width);
  overflow: hidden;
  border: 1px solid rgba(53, 52, 52, 0.226);
}

.radio-input label {
  width: 100%;
  padding: 10px;
  cursor: pointer;
  display: flex;
  justify-content: center;
  align-items: center;
  z-index: 1;
  font-weight: 600;
  letter-spacing: -1px;
  font-size: 14px;
}

.selection {
  display: none;
  position: absolute;
  height: 100%;
  width: calc(var(--container_width) / 3);
  z-index: 0;
  left: 0;
  top: 0;
  transition: .15s ease;
}

.radio-input label:has(input:checked) {
  color: #fff;
}

.radio-input label:has(input:checked) ~ .selection {
  background-color: rgb(11 117 223);
  display: inline-block;
}

.radio-input label:nth-child(1):has(input:checked) ~ .selection {
  transform: translateX(calc(var(--container_width) * 0/3));
}

.radio-input label:nth-child(2):has(input:checked) ~ .selection {
  transform: translateX(calc(var(--container_width) * 1/3));
}

.radio-input label:nth-child(3):has(input:checked) ~ .selection {
  transform: translateX(calc(var(--container_width) * 2/3));
}'
                            }
                            FluArea{
                                Layout.fillWidth: true
                                height: 170
                                paddings: 10
                                Layout.topMargin: 20
                                    WebView {
                                        anchors.fill: parent
                                        anchors{
                                            verticalCenter: parent.verticalCenter
                                            left: parent.left
                                        }
                                        url: "qrc:///example/res/html/RadioButton/Radio by ozgeozkaraa01.html" // 设置要加载的网页URL
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
                                code:'《div class="container">
  《div class="custom-radio">
    《input type="radio" id="radio-1" name="tabs" checked="">
    《label class="radio-label" for="radio-1">
      《div class="radio-circle">《/div>
      《span class="radio-text">Option 1《/span>
    《/label>
    《input type="radio" id="radio-2" name="tabs">
    《label class="radio-label" for="radio-2">
      《div class="radio-circle">《/div>
      《span class="radio-text">Option 2《/span>
    《/label>
    《input type="radio" id="radio-3" name="tabs">
    《label class="radio-label" for="radio-3">
      《div class="radio-circle">《/div>
      《span class="radio-text">Option 3《/span>
    《/label>
  《/div>
《/div>

'
                            }
                                CodeExpander{
                                    headerText: "CSS Source"
                                    Layout.fillWidth: true
                                    Layout.topMargin: -1
                                    code:'.container {
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #f2f2f2;
}

.custom-radio {
  display: flex;
  flex-direction: column;
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  overflow: hidden;
}

.custom-radio input[type="radio"] {
  display: none;
}

.radio-label {
  display: flex;
  align-items: center;
  padding: 10px 20px;
  cursor: pointer;
  transition: background-color 0.3s ease-in-out;
}

.radio-circle {
  width: 20px;
  height: 20px;
  border: 2px solid #ffcc00;
  border-radius: 50%;
  margin-right: 10px;
  transition: border-color 0.3s ease-in-out, background-color 0.3s ease-in-out;
}

.radio-text {
  font-size: 1rem;
  color: #333;
  transition: color 0.3s ease-in-out;
}

.custom-radio input[type="radio"]:checked + .radio-label {
  background-color: #ffcc00;
}

.custom-radio input[type="radio"]:checked + .radio-label .radio-circle {
  border-color: #fff;
  background-color: #ffcc00;
}

.custom-radio input[type="radio"]:checked + .radio-label .radio-text {
  color: #64748b;
}
'
                                }
                                FluArea{
                                    Layout.fillWidth: true
                                    height: 150
                                    paddings: 10
                                    Layout.topMargin: 20
                                        WebView {
                                            anchors.fill: parent
                                            anchors{
                                                verticalCenter: parent.verticalCenter
                                                left: parent.left
                                            }
                                            url: "qrc:///example/res/html/RadioButton/Radio by Ratinax.html" // 设置要加载的网页URL
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
                                    code:'《div class="container">
    《div class="fire">
        《label class="label red">
            《input type="radio" checked="checked" name="radio" class="input">
        《/label>
        《label class="label orange">
            《input type="radio" name="radio" class="input">
        《/label>
        《label class="label green">
            《input type="radio" name="radio" class="input">
        《/label>
        《span class="selection">《/span>
    《/div>
《/div>'
                                }
                                    CodeExpander{
                                        headerText: "CSS Source"
                                        Layout.fillWidth: true
                                        Layout.topMargin: -1
                                        code:'.container {
  scale: 0.7;
}

.fire {
  width: 2em;
  height: 6.5em;
  background-color: black;
  border-radius: 1em;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}

.label {
  width: 1.5em;
  height: 1.5em;
  border-radius: 50%;
  margin-top: .25em;
  margin-bottom: .25em;
  border-top: .2em solid black;
  cursor: pointer;
}

.input {
  display: none;
}

.label.red {
  background-color: #990000;
  box-shadow: 0 0 2em #990000;
}

.label.orange {
  background-color: #999900;
  box-shadow: 0 0 2em #999900;
}

.label.green {
  background-color: #009900;
  box-shadow: 0 0 2em #009900;
}

.label.red:hover {
  background-color: red;
}

.label.orange:hover {
  background-color: orange;
}

.label.green:hover {
  background-color: lime;
}

.label.red:has(input:checked) {
  background-color: red;
  box-shadow: 0 0 2em red;
}

.label.orange:has(input:checked) {
  background-color: orange;
  box-shadow: 0 0 2em orange;
}

.label.green:has(input:checked) {
  background-color: lime;
  box-shadow: 0 0 2em lime;
}'
                                    }
                                    FluArea{
                                        Layout.fillWidth: true
                                        height: 240
                                        paddings: 10
                                        Layout.topMargin: 20
                                            WebView {
                                                anchors.fill: parent
                                                anchors{
                                                    verticalCenter: parent.verticalCenter
                                                    left: parent.left
                                                }
                                                url: "qrc:///example/res/html/RadioButton/Radio by Pradeepsaranbishnoi .html" // 设置要加载的网页URL
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
    《label for="01">One《/label>
    《input id="01" type="radio" name="r" value="1" checked="">
    《label for="02">Two《/label>
    《input id="02" type="radio" name="r" value="2">
    《label for="03">Three《/label>
    《input id="03" type="radio" name="r" value="3">
《/form>
'
                                    }
                                        CodeExpander{
                                            headerText: "CSS Source"
                                            Layout.fillWidth: true
                                            Layout.topMargin: -1
                                            code:'.form {
  --background: #ffffff;
  --text: #414856;
  --radio: #7C96B2;
  --radio-checked: #4F29F0;
  --radio-size: 20px;
  --width: 150px;
  --height: 140px;
  --border-radius: 10px;
  background: var(--background);
  width: var(--width);
  height: var(--height);
  border-radius: var(--border-radius);
  color: var(--text);
  position: relative;
  box-shadow: 0 10px 30px rgba(65, 72, 86, 0.05);
  padding: 30px 20px;
  display: grid;
  grid-template-columns: auto var(--radio-size);
  align-items: center;
}

.form label {
  cursor: pointer;
}

.form input[type="radio"] {
  -webkit-appearance: none;
  -moz-appearance: none;
  position: relative;
  height: var(--radio-size);
  width: var(--radio-size);
  outline: none;
  margin: 0;
  cursor: pointer;
  border: 2px solid var(--radio);
  background: transparent;
  border-radius: 50%;
  display: grid;
  justify-self: end;
  justify-items: center;
  align-items: center;
  overflow: hidden;
  transition: border .5s ease;
}

.form input[type="radio"]::before, .form input[type="radio"]::after {
  content: "";
  display: flex;
  justify-self: center;
  border-radius: 50%;
}

.form input[type="radio"]::before {
  position: absolute;
  width: 100%;
  height: 100%;
  background: var(--background);
  z-index: 1;
  opacity: var(--opacity, 1);
}

.form input[type="radio"]::after {
  position: relative;
  width: calc(100% /2);
  height: calc(100% /2);
  background: var(--radio-checked);
  top: var(--y, 100%);
  transition: top 0.5s cubic-bezier(0.48, 1.97, 0.5, 0.63);
}

.form input[type="radio"]:checked {
  --radio: var(--radio-checked);
}

.form input[type="radio"]:checked::after {
  --y: 0%;
  animation: stretch-animate .3s ease-out .17s;
}

.form input[type="radio"]:checked::before {
  --opacity: 0;
}

.form input[type="radio"]:checked ~ input[type="radio"]::after {
  --y: -100%;
}

.form input[type="radio"]:not(:checked)::before {
  --opacity: 1;
  transition: opacity 0s linear .5s;
}

@keyframes stretch-animate {
  0% {
    transform: scale(1, 1);
  }

  28% {
    transform: scale(1.15, 0.85);
  }

  50% {
    transform: scale(0.9, 1.1);
  }

  100% {
    transform: scale(1, 1);
  }
}

.socials {
  position: fixed;
  display: block;
  left: 20px;
  bottom: 20px;
}

.socials > a {
  display: block;
  width: 30px;
  opacity: .2;
  transform: scale(var(--scale, 0.8));
  transition: transform 0.3s cubic-bezier(0.38, -0.12, 0.24, 1.91);
}

.socials > a:hover {
  --scale: 1;
}
'
                                        }
}

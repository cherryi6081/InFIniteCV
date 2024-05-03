import QtQuick
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Controls.Basic
import QtWebView
import FluentUI
import "qrc:///example/qml/component"

FluScrollablePage{

    title:"Buttons"

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
                url: "qrc:///example/res/html/Button/Button by felipesntr.html" // 设置要加载的网页URL
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
        code:'《button>
    All products
《/button>'
    }
        CodeExpander{
            headerText: "CSS Source"
            Layout.fillWidth: true
            Layout.topMargin: -1
            code:'button {
  font-size: 1rem;
  padding: 0.8em 2em;
  background-color: #000;
  border: 3px solid yellow;
  border-radius: 1em;
  color: #fff;
  font-weight: bolder;
  transition: cubic-bezier(0.68, -0.55, 0.265, 1.55) 0.4s;
  box-shadow: -5px 5px 0px 0px yellow;
}

button:hover {
  transform: translate(5px, -5px);
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
                    url: "qrc:///example/res/html/Button/Button by Yaya12085.html" // 设置要加载的网页URL
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
                code:'《button>
  《svg
    aria-hidden="true"
    stroke="currentColor"
    stroke-width="2"
    viewBox="0 0 24 24"
    fill="none"
    xmlns="http://www.w3.org/2000/svg"
  >
    《path
      d="M17.593 3.322c1.1.128 1.907 1.077 1.907 2.185V21L12 17.25 4.5 21V5.507c0-1.108.806-2.057 1.907-2.185a48.507 48.507 0 0111.186 0z"
      stroke-linejoin="round"
      stroke-linecap="round"
    >《/path>
  《/svg>
  Add Bookmark
《/button>
'
            }
            CodeExpander{
                headerText: "CSS Source"
                Layout.fillWidth: true
                Layout.topMargin: -1
                code:'button {
  border: none;
  display: flex;
  padding: 0.75rem 1.5rem;
  background-color: #488aec;
  color: #ffffff;
  font-size: 0.75rem;
  line-height: 1rem;
  font-weight: 700;
  cursor: pointer;
  text-align: center;
  text-transform: uppercase;
  vertical-align: middle;
  align-items: center;
  border-radius: 0.5rem;
  user-select: none;
  gap: 0.75rem;
  box-shadow: 0 4px 6px -1px #488aec31, 0 2px 4px -1px #488aec17;
  transition: all 0.6s ease;
}

button:hover {
  box-shadow: 0 10px 15px -3px #488aec4f, 0 4px 6px -2px #488aec17;
}

button:focus,
button:active {
  opacity: 0.85;
  box-shadow: none;
}

button svg {
  width: 1.25rem;
  height: 1.25rem;
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
                        url: "qrc:///example/res/html/Button/Button by alshahwan.html" // 设置要加载的网页URL
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
                code:'《button>
    《p>Follow me《/p>
    《svg viewBox="0 0 16 16" class="bi bi-whatsapp" fill="currentColor" height="16" width="16" xmlns="http://www.w3.org/2000/svg">
        《path d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854V1.146zm4.943 12.248V6.169H2.542v7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.4z">《/path>
    《/svg>
《/button>'
            }
                CodeExpander{
                    headerText: "CSS Source"
                    Layout.fillWidth: true
                    Layout.topMargin: -1
                    code:'/* From uiverse.io by @alshahwan */
/* From uiverse.io by @alshahwan */
button {
  background-color: #fff;
  border: 1px solid #0077b5;
  padding: 5px;
  position: relative;
  width: 7.2em;
  height: 2em;
  transition: 0.5s;
  font-size: 17px;
  border-radius: 0.4em;
}

button p {
  position: absolute;
  top: 0.4em;
  left: 1.2em;
  margin: 0;
  padding: 0;
  transition: .5s;
  color: #0077b5;
}

button svg {
  position: absolute;
  top: 0.45em;
  right: 0.5em;
  margin: 0;
  padding: 0;
  opacity: 0;
  transition: 0.5s;
  height: 1em;
  fill: #fff
}

button:hover p {
  left: 0.6em;
  color: #fff
}

button:hover svg {
  opacity: 1;
}

button:hover {
  background-color: #0077b5;
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
                            url: "qrc:///example/res/html/Button/Button by AlimurtuzaCodes.html" // 设置要加载的网页URL
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
                    code:'《button class="btn">
    《svg height="24" width="24" fill="#FFFFFF" viewBox="0 0 24 24" data-name="Layer 1" id="Layer_1" class="sparkle">
        《path d="M10,21.236,6.755,14.745.264,11.5,6.755,8.255,10,1.764l3.245,6.491L19.736,11.5l-6.491,3.245ZM18,21l1.5,3L21,21l3-1.5L21,18l-1.5-3L18,18l-3,1.5ZM19.333,4.667,20.5,7l1.167-2.333L24,3.5,21.667,2.333,20.5,0,19.333,2.333,17,3.5Z">《/path>
    《/svg>

    《span class="text">Generate《/span>
《/button>'
                }
                    CodeExpander{
                        headerText: "CSS Source"
                        Layout.fillWidth: true
                        Layout.topMargin: -1
                        code:'.btn {
  border: none;
  width: 15em;
  height: 5em;
  border-radius: 3em;
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 12px;
  background: #1C1A1C;
  cursor: pointer;
  transition: all 450ms ease-in-out;
}

.sparkle {
  fill: #AAAAAA;
  transition: all 800ms ease;
}

.text {
  font-weight: 600;
  color: #AAAAAA;
  font-size: medium;
}

.btn:hover {
  background: linear-gradient(0deg,#A47CF3,#683FEA);
  box-shadow: inset 0px 1px 0px 0px rgba(255, 255, 255, 0.4),
  inset 0px -4px 0px 0px rgba(0, 0, 0, 0.2),
  0px 0px 0px 4px rgba(255, 255, 255, 0.2),
  0px 0px 180px 0px #9917FF;
  transform: translateY(-2px);
}

.btn:hover .text {
  color: white;
}

.btn:hover .sparkle {
  fill: white;
  transform: scale(1.2);
} '
                    }
                    FluArea{
                        Layout.fillWidth: true
                        height: 126
                        paddings: 10
                        Layout.topMargin: 20
                            WebView {
                                anchors.fill: parent
                                anchors{
                                    verticalCenter: parent.verticalCenter
                                    left: parent.left
                                }
                                url: "qrc:///example/res/html/Button/Button by adamgiebl.html" // 设置要加载的网页URL
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
                        code:'《button> Button
《/button>'
                    }
                        CodeExpander{
                            headerText: "CSS Source"
                            Layout.fillWidth: true
                            Layout.topMargin: -1
                            code:'button {
  position: relative;
  display: inline-block;
  margin: 15px;
  padding: 15px 30px;
  text-align: center;
  font-size: 18px;
  letter-spacing: 1px;
  text-decoration: none;
  color: #725AC1;
  background: transparent;
  cursor: pointer;
  transition: ease-out 0.5s;
  border: 2px solid #725AC1;
  border-radius: 10px;
  box-shadow: inset 0 0 0 0 #725AC1;
}

button:hover {
  color: white;
  box-shadow: inset 0 -100px 0 0 #725AC1;
}

button:active {
  transform: scale(0.9);
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
                                    url: "qrc:///example/res/html/Button/Button by Gaurav-WebDev.html" // 设置要加载的网页URL
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
                            code:'《button class="button type1">
  《span class="btn-txt">Hello《/span>
《/button>'
                        }
                            CodeExpander{
                                headerText: "CSS Source"
                                Layout.fillWidth: true
                                Layout.topMargin: -1
                                code:'.button {
  height: 50px;
  width: 200px;
  position: relative;
  background-color: transparent;
  cursor: pointer;
  border: 2px solid #252525;
  overflow: hidden;
  border-radius: 30px;
  color: #333;
  transition: all 0.5s ease-in-out;
}

.btn-txt {
  z-index: 1;
  font-weight: 800;
  letter-spacing: 4px;
}

.type1::after {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  transition: all 0.5s ease-in-out;
  background-color: #333;
  border-radius: 30px;
  visibility: hidden;
  height: 10px;
  width: 10px;
  z-index: -1;
}

.button:hover {
  box-shadow: 1px 1px 200px #252525;
  color: #fff;
  border: none;
}

.type1:hover::after {
  visibility: visible;
  transform: scale(100) translateX(2px);
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
                                        url: "qrc:///example/res/html/Button/Button by JaydipPrajapati1910.html" // 设置要加载的网页URL
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
                                code:'《div data-tooltip="Price:-$20" class="button">
《div class="button-wrapper">
  《div class="text">Buy Now《/div>
    《span class="icon">
      《svg viewBox="0 0 16 16" class="bi bi-cart2" fill="currentColor" height="16" width="16" xmlns="http://www.w3.org/2000/svg">
  《path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l1.25 5h8.22l1.25-5H3.14zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z">《/path>
《/svg>
    《/span>
  《/div>
《/div>

'
                            }
                                CodeExpander{
                                    headerText: "CSS Source"
                                    Layout.fillWidth: true
                                    Layout.topMargin: -1
                                    code:'.button {
  --width: 100px;
  --height: 35px;
  --tooltip-height: 35px;
  --tooltip-width: 90px;
  --gap-between-tooltip-to-button: 18px;
  --button-color: #222;
  --tooltip-color: #fff;
  width: var(--width);
  height: var(--height);
  background: var(--button-color);
  position: relative;
  text-align: center;
  border-radius: 0.45em;
  font-family: "Arial";
  transition: background 0.3s;
}

.button::before {
  position: absolute;
  content: attr(data-tooltip);
  width: var(--tooltip-width);
  height: var(--tooltip-height);
  background-color: #555;
  font-size: 0.9rem;
  color: #fff;
  border-radius: .25em;
  line-height: var(--tooltip-height);
  bottom: calc(var(--height) + var(--gap-between-tooltip-to-button) + 10px);
  left: calc(50% - var(--tooltip-width) / 2);
}

.button::after {
  position: absolute;
  content:"";
  width: 0;
  height: 0;
  border: 10px solid transparent;
  border-top-color: #555;
  left: calc(50% - 10px);
  bottom: calc(100% + var(--gap-between-tooltip-to-button) - 10px);
}

.button::after,.button::before {
  opacity: 0;
  visibility: hidden;
  transition: all 0.5s;
}

.text {
  display: flex;
  align-items: center;
  justify-content: center;
}

.button-wrapper,.text,.icon {
  overflow: hidden;
  position: absolute;
  width: 100%;
  height: 100%;
  left: 0;
  color: #fff;
}

.text {
  top: 0
}

.text,.icon {
  transition: top 0.5s;
}

.icon {
  color: #fff;
  top: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
}

.icon svg {
  width: 24px;
  height: 24px;
}

.button:hover {
  background: #222;
}

.button:hover .text {
  top: -100%;
}

.button:hover .icon {
  top: 0;
}

.button:hover:before,.button:hover:after {
  opacity: 1;
  visibility: visible;
}

.button:hover:after {
  bottom: calc(var(--height) + var(--gap-between-tooltip-to-button) - 20px);
}

.button:hover:before {
  bottom: calc(var(--height) + var(--gap-between-tooltip-to-button));
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
                                            url: "qrc:///example/res/html/Button/Button by SharpTH.html" // 设置要加载的网页URL
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
                                    code:'《button class="btn-cssbuttons">
《span>Button《/span>《span>
  《svg height="18" width="18" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 1024 1024" class="icon">
    《path fill="#ffffff" d="M767.99994 585.142857q75.995429 0 129.462857 53.394286t53.394286 129.462857-53.394286 129.462857-129.462857 53.394286-129.462857-53.394286-53.394286-129.462857q0-6.875429 1.170286-19.456l-205.677714-102.838857q-52.589714 49.152-124.562286 49.152-75.995429 0-129.462857-53.394286t-53.394286-129.462857 53.394286-129.462857 129.462857-53.394286q71.972571 0 124.562286 49.152l205.677714-102.838857q-1.170286-12.580571-1.170286-19.456 0-75.995429 53.394286-129.462857t129.462857-53.394286 129.462857 53.394286 53.394286 129.462857-53.394286 129.462857-129.462857 53.394286q-71.972571 0-124.562286-49.152l-205.677714 102.838857q1.170286 12.580571 1.170286 19.456t-1.170286 19.456l205.677714 102.838857q52.589714-49.152 124.562286-49.152z">《/path>
  《/svg>
《/span>
《ul>
《li>
  《a href="https://twitter.com/SumethWrrn">《svg height="18" width="18" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 1024 1024" class="icon">
  《path fill="white" d="M962.267429 233.179429q-38.253714 56.027429-92.598857 95.451429 0.585143 7.972571 0.585143 23.990857 0 74.313143-21.723429 148.260571t-65.974857 141.970286-105.398857 120.32-147.456 83.456-184.539429 31.158857q-154.843429 0-283.428571-82.870857 19.968 2.267429 44.544 2.267429 128.585143 0 229.156571-78.848-59.977143-1.170286-107.446857-36.864t-65.170286-91.136q18.870857 2.852571 34.889143 2.852571 24.576 0 48.566857-6.290286-64-13.165714-105.984-63.707429t-41.984-117.394286l0-2.267429q38.838857 21.723429 83.456 23.405714-37.741714-25.161143-59.977143-65.682286t-22.308571-87.990857q0-50.322286 25.161143-93.110857 69.12 85.138286 168.301714 136.265143t212.260571 56.832q-4.534857-21.723429-4.534857-42.276571 0-76.580571 53.979429-130.56t130.56-53.979429q80.018286 0 134.875429 58.294857 62.317714-11.995429 117.174857-44.544-21.138286 65.682286-81.115429 101.741714 53.174857-5.705143 106.276571-28.598857z">《/path>《/svg>《/a>
《/li>
《li>
  《a href="https://codepen.io/sharpth">《svg height="18" width="18" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 1024 1024" class="icon">
  《path fill="white" d="M123.52064 667.99143l344.526782 229.708899 0-205.136409-190.802457-127.396658zM88.051421 585.717469l110.283674-73.717469-110.283674-73.717469 0 147.434938zM556.025711 897.627196l344.526782-229.708899-153.724325-102.824168-190.802457 127.396658 0 205.136409zM512 615.994287l155.406371-103.994287-155.406371-103.994287-155.406371 103.994287zM277.171833 458.832738l190.802457-127.396658 0-205.136409-344.526782 229.708899zM825.664905 512l110.283674 73.717469 0-147.434938zM746.828167 458.832738l153.724325-102.824168-344.526782-229.708899 0 205.136409zM1023.926868 356.00857l0 311.98286q0 23.402371-19.453221 36.566205l-467.901157 311.98286q-11.993715 7.459506-24.57249 7.459506t-24.57249-7.459506l-467.901157-311.98286q-19.453221-13.163834-19.453221-36.566205l0-311.98286q0-23.402371 19.453221-36.566205l467.901157-311.98286q11.993715-7.459506 24.57249-7.459506t24.57249 7.459506l467.901157 311.98286q19.453221 13.163834 19.453221 36.566205z">《/path>《/svg>《/a>
《/li>
《li>
《a href="https://github.com/SharpTH">《svg height="18" width="18" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 1024 1024" class="icon">
《path fill="white" d="M950.930286 512q0 143.433143-83.748571 257.974857t-216.283429 158.573714q-15.433143 2.852571-22.601143-4.022857t-7.168-17.115429l0-120.539429q0-55.442286-29.696-81.115429 32.548571-3.437714 58.587429-10.313143t53.686857-22.308571 46.299429-38.034286 30.281143-59.977143 11.702857-86.016q0-69.12-45.129143-117.686857 21.138286-52.004571-4.534857-116.589714-16.018286-5.12-46.299429 6.290286t-52.589714 25.161143l-21.723429 13.677714q-53.174857-14.848-109.714286-14.848t-109.714286 14.848q-9.142857-6.290286-24.283429-15.433143t-47.689143-22.016-49.152-7.68q-25.161143 64.585143-4.022857 116.589714-45.129143 48.566857-45.129143 117.686857 0 48.566857 11.702857 85.723429t29.988571 59.977143 46.006857 38.253714 53.686857 22.308571 58.587429 10.313143q-22.820571 20.553143-28.013714 58.88-11.995429 5.705143-25.746286 8.557714t-32.548571 2.852571-37.449143-12.288-31.744-35.693714q-10.825143-18.285714-27.721143-29.696t-28.306286-13.677714l-11.410286-1.682286q-11.995429 0-16.603429 2.56t-2.852571 6.582857 5.12 7.972571 7.460571 6.875429l4.022857 2.852571q12.580571 5.705143 24.868571 21.723429t17.993143 29.110857l5.705143 13.165714q7.460571 21.723429 25.161143 35.108571t38.253714 17.115429 39.716571 4.022857 31.744-1.974857l13.165714-2.267429q0 21.723429 0.292571 50.834286t0.292571 30.866286q0 10.313143-7.460571 17.115429t-22.820571 4.022857q-132.534857-44.032-216.283429-158.573714t-83.748571-257.974857q0-119.442286 58.88-220.306286t159.744-159.744 220.306286-58.88 220.306286 58.88 159.744 159.744 58.88 220.306286z">《/path>《/svg>《/a>《/li>《/ul>《/button>'
                                }
                                    CodeExpander{
                                        headerText: "CSS Source"
                                        Layout.fillWidth: true
                                        Layout.topMargin: -1
                                        code:'.btn-cssbuttons {
 --btn-color: #275efe;
 position: relative;
 padding: 16px 32px;
 font-family: Roboto, sans-serif;
 font-weight: 500;
 font-size: 16px;
 line-height: 1;
 color: white;
 background: none;
 border: none;
 outline: none;
 overflow: hidden;
 cursor: pointer;
 filter: drop-shadow(0 2px 8px rgba(39, 94, 254, 0.32));
 transition: 0.3s cubic-bezier(0.215, 0.61, 0.355, 1);
}

.btn-cssbuttons::before {
 position: absolute;
 content: "";
 top: 0;
 left: 0;
 z-index: -1;
 width: 100%;
 height: 100%;
 background: var(--btn-color);
 border-radius: 24px;
 transition: 0.3s cubic-bezier(0.215, 0.61, 0.355, 1);
}

.btn-cssbuttons span,
.btn-cssbuttons span span {
 display: inline-flex;
 vertical-align: middle;
 transition: 0.3s cubic-bezier(0.215, 0.61, 0.355, 1);
}

.btn-cssbuttons span {
 transition-delay: 0.05s;
}

.btn-cssbuttons span:first-child {
 padding-right: 7px;
}

.btn-cssbuttons span span {
 margin-left: 8px;
 transition-delay: 0.1s;
}

.btn-cssbuttons ul {
 position: absolute;
 top: 50%;
 left: 0;
 right: 0;
 display: flex;
 margin: 0;
 padding: 0;
 list-style-type: none;
 transform: translateY(-50%);
}

.btn-cssbuttons ul li {
 flex: 1;
}

.btn-cssbuttons ul li a {
 display: inline-flex;
 vertical-align: middle;
 transform: translateY(55px);
 transition: 0.3s cubic-bezier(0.215, 0.61, 0.355, 1);
}

.btn-cssbuttons ul li a:hover {
 opacity: 0.5;
}

.btn-cssbuttons:hover::before {
 transform: scale(1.2);
}

.btn-cssbuttons:hover span,
.btn-cssbuttons:hover span span {
 transform: translateY(-55px);
}

.btn-cssbuttons:hover ul li a {
 transform: translateY(0);
}

.btn-cssbuttons:hover ul li:nth-child(1) a {
 transition-delay: 0.15s;
}

.btn-cssbuttons:hover ul li:nth-child(2) a {
 transition-delay: 0.2s;
}

.btn-cssbuttons:hover ul li:nth-child(3) a {
 transition-delay: 0.25s;
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
                                                url: "qrc:///example/res/html/Button/Button by mrhyddenn.html" // 设置要加载的网页URL
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
                                        code:'《button>
    《svg viewBox="0 0 16 16" class="bi bi-twitter" fill="currentColor" height="18" width="18" xmlns="http://www.w3.org/2000/svg">
        《path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z">《/path>
    《/svg>
    《span>Twitter《/span>
《/button>'
                                    }
                                        CodeExpander{
                                            headerText: "CSS Source"
                                            Layout.fillWidth: true
                                            Layout.topMargin: -1
                                            code:'button {
  background: transparent;
  position: relative;
  padding: 5px 15px;
  display: flex;
  align-items: center;
  font-size: 17px;
  font-weight: 600;
  text-decoration: none;
  cursor: pointer;
  border: 1px solid rgb(40, 144, 241);
  border-radius: 25px;
  outline: none;
  overflow: hidden;
  color: rgb(40, 144, 241);
  transition: color 0.3s 0.1s ease-out;
  text-align: center;
}

button span {
  margin: 10px;
}

button::before {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  margin: auto;
  content: " ";
  border-radius: 50%;
  display: block;
  width: 20em;
  height: 20em;
  left: -5em;
  text-align: center;
  transition: box-shadow 0.5s ease-out;
  z-index: -1;
}

button:hover {
  color: #fff;
  border: 1px solid rgb(40, 144, 241);
}

button:hover::before {
  box-shadow: inset 0 0 0 10em rgb(40, 144, 241);
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
                                                    url: "qrc:///example/res/html/Button/Button by doniaskima.html" // 设置要加载的网页URL
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
                                            code:'《button class="btn-31">
  《span class="text-container">
    《span class="text">Button《/span>
  《/span>
《/button>
'
                                        }
                                            CodeExpander{
                                                headerText: "CSS Source"
                                                Layout.fillWidth: true
                                                Layout.topMargin: -1
                                                code:'.btn-31,
.btn-31 *,
.btn-31 :after,
.btn-31 :before,
.btn-31:after,
.btn-31:before {
  border: 0 solid;
  box-sizing: border-box;
}

.btn-31 {
  -webkit-tap-highlight-color: transparent;
  -webkit-appearance: button;
  background-color: #000;
  background-image: none;
  color: #fff;
  cursor: pointer;
  font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont,
    Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif,
    Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;
  font-size: 100%;
  font-weight: 900;
  line-height: 1.5;
  margin: 0;
  -webkit-mask-image: -webkit-radial-gradient(#000, #fff);
  padding: 0;
}

.btn-31:disabled {
  cursor: default;
}

.btn-31:-moz-focusring {
  outline: auto;
}

.btn-31 svg {
  display: block;
  vertical-align: middle;
}

.btn-31 [hidden] {
  display: none;
}

.btn-31 {
  border-width: 1px;
  padding: 1rem 2rem;
  position: relative;
  text-transform: uppercase;
}

.btn-31:before {
  --progress: 100%;
  background: #fff;
  -webkit-clip-path: polygon(
    100% 0,
    var(--progress) var(--progress),
    0 100%,
    100% 100%
  );
  clip-path: polygon(
    100% 0,
    var(--progress) var(--progress),
    0 100%,
    100% 100%
  );
  content: "";
  inset: 0;
  position: absolute;
  transition: -webkit-clip-path 0.2s ease;
  transition: clip-path 0.2s ease;
  transition: clip-path 0.2s ease, -webkit-clip-path 0.2s ease;
}

.btn-31:hover:before {
  --progress: 0%;
}

.btn-31 .text-container {
  display: block;
  overflow: hidden;
  position: relative;
}

.btn-31 .text {
  display: block;
  font-weight: 900;
  mix-blend-mode: difference;
  position: relative;
}

.btn-31:hover .text {
  -webkit-animation: move-up-alternate 0.3s ease forwards;
  animation: move-up-alternate 0.3s ease forwards;
}

@-webkit-keyframes move-up-alternate {
  0% {
    transform: translateY(0);
  }

  50% {
    transform: translateY(80%);
  }

  51% {
    transform: translateY(-80%);
  }

  to {
    transform: translateY(0);
  }
}

@keyframes move-up-alternate {
  0% {
    transform: translateY(0);
  }

  50% {
    transform: translateY(80%);
  }

  51% {
    transform: translateY(-80%);
  }

  to {
    transform: translateY(0);
  }
}
'
                                            }
}

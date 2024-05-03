import QtQuick
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.Controls
import FluentUI

FluExpander{

    id:control
    property string code: ""
    headerText: "Source"
    contentHeight:content.height
    focus: false

    FluMultilineTextBox{
        id:content
        width:parent.width
        activeFocusOnTab: false
        activeFocusOnPress: false
        readOnly: true
        text:highlightQmlCode(htmlEncode(code))
        textFormat: FluMultilineTextBox.RichText
        KeyNavigation.priority: KeyNavigation.BeforeItem
        background:Rectangle{
            radius: 4
            color:FluTheme.dark ? Qt.rgba(50/255,50/255,50/255,1) : Qt.rgba(247/255,247/255,247/255,1)
            border.color: FluTheme.dark ? Qt.rgba(45/255,45/255,45/255,1) : Qt.rgba(226/255,229/255,234/255,1)
            border.width: 1
        }
    }

    FluIconButton{
        iconSource:FluentIcons.Copy
        anchors{
            right: parent.right
            top: parent.top
            rightMargin: 5
            topMargin: 5
        }
        onClicked:{
            FluTools.clipText(FluTools.html2PlantText(content.text))
            showSuccess("复制成功")
        }
    }

    function htmlEncode(e){
        var i,s;
        for(i in s={
                "&":/&/g,//""//":/"/g,"'":/'/g,
                "<":/</g,">":/>/g,"<br/>":/\n/g,
                " ":/ /g,"  ":/\t/g
            })e=e.replace(s[i],i);
        return e;
    }

    function highlightQmlCode(code) {
        // 定义 QML 关键字列表
        var qmlKeywords = [
                    "a",
                    "tooltip",
                    "button:hover",
                    "button svg",
                    "button span",
                    "button p",
                    "btn",
                    "group",
                    "submit",
                    "subscribe",
                    "signup-link",
                    "fire",
                    "rating",
                    "tabs",
                    "checkbox-wrapper",
                    "container",
                    "radio-inputs",
                    "radio-input",
                    ".radio-wrapper",
                    "checkbox-wrapper-46",
                    "customCheckBoxInput:checked",
                    "customCheckBox:hover",
                    "customCheckBoxHolder",
                    "customCheckBox",
                    "div",
                    "login-box",
                    "title",
                    "description",
                    "label",
                    "input",
                    ".heart-container",
                    "svg",
                    "path",
                    "p",
                    "span",
                    "sparkle",
                    "text",
                    "type1",
                    "ul",
                    "li",
                    "to ",
                    "bookmark",
                    "subtitle",
                    "ui-bookmark",
                    "ui-bookmark input",
                    "webkit-keyframes",
                    "keyframes",
                    "switch",
                    "slider",
                    "description",
                    "loadingspinner",
                    "pl",
                    "loader",
                    "dot-spinner",
                    "spinner",
                    "group",
                    "textInputWrapper",
                    "searchbar",
                    "form",
                    "form"
                ];
        code = code.replace(/\n/g, "<br>");
        code = code.replace(/ /g, "&nbsp;");
        return code.replace(RegExp("\\b(" + qmlKeywords.join("|") + ")\\b", "g"), "<span style='color: #c23a80'>$1</span>");
    }
}



/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import TextLoud

Column {
    id: column
    anchors.fill: parent
    TabBar {
        id: toolbarTab
        font.pointSize: 12
        contentHeight: 30
        anchors.horizontalCenter: parent.horizontalCenter
        TabButton {
            text: qsTr("开始")
            width: implicitWidth
        }
        TabButton {
            text: qsTr("插入")
            width: implicitWidth
        }
        TabButton {
            text: qsTr("页面")
            width: implicitWidth
        }
        TabButton {
            text: qsTr("引用")
            width: implicitWidth
        }
        TabButton {
            text: qsTr("审阅")
            width: implicitWidth
        }
        TabButton {
            text: qsTr("特色功能")
            width: implicitWidth
        }
    }

    StackView {
        id: toolbarContent
        height: 50
        anchors.left: parent.left
        anchors.right: parent.right
        initialItem: startTools
        anchors.top: toolbarTab.bottom
        anchors.rightMargin: 20
        anchors.leftMargin: 20
    }

    Rectangle {
        id: rectangle
        color: "#eee"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: toolbarContent.bottom
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        RichTextEdit {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            anchors.topMargin: 20
        }
    }

    Component {
        id: startTools
        ToolBar {
            width: parent.width
            background: Rectangle {
                color: "white"
            }
            Row {
                id: row
                spacing: 10
                Image {
                    width: 12
                    height: 12
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/svgs/solid/bold.svg"
                    MouseArea {
                        anchors.fill: parent
                    }
                }
                Image {
                    width: 12
                    height: 12
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/svgs/solid/italic.svg"
                }
                Image {
                    width: 12
                    height: 12
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/svgs/solid/underline.svg"
                }
                ToolSeparator {}
            }
        }
    }
    Component {
        id: insertTools
        ToolBar {
            width: parent.width
            Row {
                ToolButton {
                    text: "Text"
                }
                ToolButton {
                    text: "Box"
                }
            }
        }
    }
}



/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 600
    height: 800
    Column {
        id: column
        anchors.fill: parent
        Rectangle {
            id: pageIndicator
            height: 20
            anchors.top: parent.top
            anchors.topMargin: 40
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
            Item {
                clip: true
                anchors.left: parent.left
                anchors.leftMargin: 40
                width: 20
                height: 20
                Rectangle {
                    anchors.fill: parent
                    anchors.topMargin: -border.width
                    anchors.leftMargin: -border.width
                    border.width: 1
                    border.color: "gray"
                }
            }
            Item {
                clip: true
                anchors.right: parent.right
                anchors.rightMargin: 40
                width: 20
                height: 20
                Rectangle {
                    anchors.fill: parent
                    anchors.rightMargin: -border.width
                    anchors.topMargin: -border.width
                    border.width: 1
                    border.color: "gray"
                }
            }
        }
        TextEdit {
            clip: true
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: pageIndicator.bottom
            anchors.bottom: parent.bottom
            anchors.rightMargin: 60
            anchors.leftMargin: 60
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            focus: true
            textFormat: RichText
            text: "<b>Hello</b> <i>World!</i>"
        }
    }
}

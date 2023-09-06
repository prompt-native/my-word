

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

ColumnLayout {
    ToolBar {
        id: tabbar
        Layout.preferredHeight: 35
        Layout.fillWidth: true

        background: Rectangle {
            color: "white"
        }
        RowLayout {
            id: row
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 40
            anchors.leftMargin: 40

            ToolButton {
                Layout.preferredWidth: 28
                Layout.preferredHeight: 28
                icon.color: "black"
                icon.source: Qt.resolvedUrl("images/lc_open.svg")
            }
            ToolButton {
                Layout.preferredWidth: 28
                Layout.preferredHeight: 28
                icon.color: "black"
                icon.source: Qt.resolvedUrl("images/lc_save.svg")
            }
            ToolButton {
                Layout.preferredWidth: 28
                Layout.preferredHeight: 28
                icon.color: "black"
                icon.source: Qt.resolvedUrl("images/lc_print.svg")
            }
            ToolSeparator {
                Layout.preferredHeight: 30
            }
            ToolButton {
                Layout.preferredWidth: 28
                Layout.preferredHeight: 28
                icon.color: "black"
                icon.source: Qt.resolvedUrl("images/lc_copy.svg")
            }
            ToolButton {
                Layout.preferredWidth: 28
                Layout.preferredHeight: 28
                icon.color: "black"
                icon.source: Qt.resolvedUrl("images/lc_paste.svg")
            }
            ToolButton {
                Layout.preferredWidth: 28
                Layout.preferredHeight: 28
                icon.color: "black"
                icon.source: Qt.resolvedUrl("images/lc_undo.svg")
            }
            ToolButton {
                Layout.preferredWidth: 28
                Layout.preferredHeight: 28
                icon.color: "black"
                icon.source: Qt.resolvedUrl("images/lc_redo.svg")
            }
            ToolSeparator {
                Layout.preferredHeight: 30
            }
            ToolButton {
                Layout.preferredWidth: 28
                Layout.preferredHeight: 28
                icon.color: "black"
                icon.source: Qt.resolvedUrl("images/lc_bold.svg")
            }
            ToolButton {
                Layout.preferredWidth: 28
                Layout.preferredHeight: 28
                icon.color: "black"
                icon.source: Qt.resolvedUrl("images/lc_italic.svg")
            }
            ToolButton {
                Layout.preferredWidth: 28
                Layout.preferredHeight: 28
                icon.color: "black"
                icon.source: Qt.resolvedUrl("images/lc_underline.svg")
            }
            ToolButton {
                Layout.preferredWidth: 28
                Layout.preferredHeight: 28
                icon.color: "black"
                icon.source: Qt.resolvedUrl("images/lc_underlinedouble.svg")
            }
            ToolButton {
                Layout.preferredWidth: 28
                Layout.preferredHeight: 28
                icon.color: "black"
                icon.source: Qt.resolvedUrl("images/lc_color.svg")
            }
            ToolSeparator {
                Layout.preferredHeight: 30
            }
            ToolButton {
                Layout.preferredWidth: 28
                Layout.preferredHeight: 28
                icon.color: "black"
                icon.source: Qt.resolvedUrl("images/lc_alignleft.svg")
            }
            ToolButton {
                Layout.preferredWidth: 28
                Layout.preferredHeight: 28
                icon.color: "black"
                icon.source: Qt.resolvedUrl("images/lc_alignhorizontalcenter.svg")
            }
            ToolButton {
                Layout.preferredWidth: 28
                Layout.preferredHeight: 28
                icon.color: "black"
                icon.source: Qt.resolvedUrl("images/lc_alignright.svg")
            }
            ToolSeparator {
                Layout.preferredHeight: 30
            }
            ComboBox {
                Layout.preferredWidth: 200
                model: ["Arial", "SF Pro"]
                Layout.preferredHeight: 35
                font.pointSize: 12
            }
            ComboBox {
                Layout.preferredWidth: 80
                model: ["14", "16"]
                Layout.preferredHeight: 35
                font.pointSize: 12
            }
        }
    }

    Flickable {
        id: flickable
        Layout.fillWidth: true
        Layout.fillHeight: true
        contentHeight: textedit.height
        contentWidth: textedit.width
        clip: true
        ScrollBar.vertical: ScrollBar {
            policy: flickable.contentHeight
                    > flickable.height ? ScrollBar.AlwaysOn : ScrollBar.AlwaysOff
        }
        TextEdit {
            id: textedit
            clip: true
            width: flickable.width
            leftPadding: 40
            rightPadding: 40
            topPadding: 40
            bottomPadding: 20
            Layout.fillHeight: true
            text: "<bold>“My late husband Michael Williams and I used to do a lot of recitals, many of them with Robert Spencer. Halfway through the recital, Robert would recite this poem, and it always reduced me to tears, so much so that I was incapable of continuing the recital if it was my turn next. As a result, we changed the order so that Michael followed this particular piece and I had time to compose myself.” </bold>"
            anchors.top: tabbar.bottom
            focus: true
            wrapMode: TextEdit.WrapAtWordBoundaryOrAnywhere
            anchors.topMargin: 0
            textFormat: Text.RichText
            selectByMouse: true
            font.family: "SF Pro"
            font.pointSize: 16
        }
    }
}



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
        Layout.fillWidth: true
        Layout.preferredHeight: 50
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
        }
    }
}

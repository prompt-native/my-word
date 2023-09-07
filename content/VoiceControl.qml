import QtQuick 2.15

Window {
    modality: Qt.ApplicationModal
    transientParent: root
    Image {
        anchors.fill: parent
        source: "images/foobar.svg"
    }
}

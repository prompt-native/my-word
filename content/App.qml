// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.2
import MyWord

Window {
    width: 1024
    height: 768

    visible: true
    title: "MyWord"

    Editor {
        id: mainScreen
        anchors.fill: parent
    }

    VoiceControl {
        id: floatingWidget
        visible: false
    }
}


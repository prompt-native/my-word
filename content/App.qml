// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.2
import QtQuick.Controls 6.2
import TextLoud

Window {
    width: 800
    height: 100

    visible: true
    title: "MyWord"


    DocEdit {
        id: mainScreen
        anchors.fill: parent
    }

}


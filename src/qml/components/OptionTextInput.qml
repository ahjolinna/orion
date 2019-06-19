/*
 * Copyright © 2015-2016 Antti Lamminsalo
 *
 * This file is part of Orion.
 *
 * Orion is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * You should have received a copy of the GNU General Public License
 * along with Orion.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.5
import "../styles.js" as Styles

Item {
    property string text
    property var value
    property var mask
    property int inputWidth: dp(60)

    function getValue(){
        return _input.text
    }

    id: root
    height: dp(60)

    Component.onCompleted: _input.text = value

    Text {
        color: Styles.textColor
        font.pixelSize: Styles.titleFont.bigger
        text: root.text
        anchors {
            left: parent.left
            top: parent.top
            bottom: parent.bottom
            leftMargin: dp(10)
        }
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        //renderType: Text.NativeRendering
    }

    Rectangle {
        anchors {
            right: parent.right
            top: parent.top
            bottom: parent.bottom
            margins: dp(10)
        }

        width: root.inputWidth

        //radius: dp(5)
        color: Styles.sidebarBg

        MouseArea{
            anchors.fill: parent
            cursorShape: Qt.IBeamCursor

            TextInput{
                id: _input
                color: Styles.iconColor
                anchors.fill: parent
                clip:true
                selectionColor: Styles.purple
                focus: true
                selectByMouse: true
                font.pixelSize: Styles.titleFont.bigger
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                inputMask: mask
            }
        }
    }
}

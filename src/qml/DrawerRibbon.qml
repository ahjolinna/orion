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
import "components"

Ribbon {
    id: root
    signal click
    iconStr: 'chevron_l'

    MouseArea {
        id: mA
        anchors.fill: parent
        onClicked: {
            root.click()
            //rotateIcon()
        }

        hoverEnabled: true
        onHoveredChanged: {
            root.setHighlight(containsMouse)
        }
    }
}

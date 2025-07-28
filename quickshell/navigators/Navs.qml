import Quickshell
import Quickshell.Io
import QtQuick

//Scope {}
PanelWindow {
    color: "transparent"
    anchors {
        left: true
        top: true
        right: true
        bottom: true
    }
    Image {
        source: "../assets/navigator.png"
        width: 24
        height: 48
        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
        }
        // MouseArea {
        //     anchors.fill: parent
        //     onClicked: leftcol()
        // }
        // Process {
        //     id: leftcol
        //     command: ["niri", "msg", "action", "focus-column-left"]
        // }
    }
}

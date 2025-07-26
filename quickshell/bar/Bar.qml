import Quickshell
import QtQuick
import Quickshell.Wayland

PanelWindow {
    property var marginrl: 35
    property var spacing: 20

    anchors {
        top: true
        left: true
        right: true
    }
    implicitHeight: 50
    color: "transparent"
    WlrLayershell.layer: WlrLayer.Bottom

    Image {
        source: "../assets/bar-left.png"
        width: 30
        height: 30
        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: marginrl
        }
    }
    Image {
        source: "../assets/bar-center.png"
        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: marginrl + 30
            right: parent.right
            rightMargin: marginrl + 30
        }
    }
    Image {
        source: "../assets/bar-right.png"
        width: 30
        height: 30
        anchors {
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: marginrl
        }
    }

    Clockbar {
        anchors {
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: marginrl + spacing + 30
        }
    }
    Menulauncher {
        anchors {
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }
    }
}

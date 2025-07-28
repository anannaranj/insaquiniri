import Quickshell
import Quickshell.Io
import QtQuick
import Quickshell.Wayland

PanelWindow {
    implicitWidth: screenw
    implicitHeight: screenh
    color: "transparent"
    WlrLayershell.layer: WlrLayer.Bottom

    Rectangle {
        id: rect
        y: 300
        x: 1250
        AnimatedSprite {
            id: swimming
            source: "./assets/swim.png"
            frameHeight: 80
            frameWidth: 80
            frameCount: 10
            frameDuration: 50
            frameX: 0
            frameY: 160
            interpolate: false
        }
        NumberAnimation on x {
            id: xanim
            to: Math.random() * 1366
            duration: 4000
            easing.type: Easing.InOutQuad
            onFinished: {
                xanim.restart();
            }
        }
        PropertyAnimation on y {
            id: yanim
            to: Math.random() * 768
            duration: 4000
            easing.type: Easing.InOutQuad
            onFinished: {
                yanim.restart();
            }
        }
    }

    Timer {
        interval: 5000
        running: true
        repeat: true
        onTriggered: xanim.restart()
    }
}

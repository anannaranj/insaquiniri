import Quickshell
import QtQuick
import Quickshell.Wayland

PanelWindow{
	implicitWidth: screenw
	implicitHeight: screenh
	WlrLayershell.layer: WlrLayer.Bottom
	Rectangle {
		color: "#fec32a"
		Image {
			source: "./wallpapers/tank1x4enhanced.jpeg"
			width: screenw
			height: screenh
			fillMode: Image.PreserveAspectCrop
			verticalAlignment: Image.AlignBottom
			horizontalAlignment: Image.AlignHCenter
		}
	}
}

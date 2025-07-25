import Quickshell
import QtQuick

Image {
	source: "./assets/bar-screen.png"
	id: "screen"
	SystemClock {
		id: clock
		precision: SystemClock.Minutes
	}

	Text {
		text: Qt.formatDateTime(clock.date, "hh:mm A")
		color: "#aaaaff"
		anchors {
			verticalCenter: screen.verticalCenter
			horizontalCenter: screen.horizontalCenter
		}
		font {
			family: "Hurmit Nerd Font"
			pointSize: 16
		}
	}
}

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {

    radius: 12
    color: "#1a2437"

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 15
        spacing: 10

        Text {
            text: "Test Output"
            color: "white"
            font.pixelSize: 18
        }

        ComboBox { model: ["Device Under Test"] }
        ComboBox { model: ["Test Type"] }

        Button {
            text: "Start Test"
            Layout.fillWidth: true
        }

        Button {
            text: "Stop Test"
            Layout.fillWidth: true
        }
    }
}

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    implicitHeight: 54
    radius: 16
    color: "transparent"

    RowLayout {
        anchors.fill: parent
        spacing: 14

        Repeater {
            model: ["Device Status", "Live Data", "Test Automation", "Logs", "Logs Output"]

            Rectangle {
                Layout.preferredWidth: index === 2 ? 196 : 160
                Layout.fillHeight: true
                radius: 12
                color: index === 0 ? "#334462" : "#1d2738"
                border.color: index === 0 ? "#3f5b87" : "#263248"
                border.width: 1

                Text {
                    anchors.centerIn: parent
                    text: modelData
                    color: index === 0 ? "#8cb3f2" : "#edf2ff"
                    font.pixelSize: 13
                    font.weight: Font.DemiBold
                }
            }
        }
    }
}

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    height: 76
    color: "#2a3548"
    radius: 28

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 18
        anchors.rightMargin: 18
        anchors.topMargin: 12
        anchors.bottomMargin: 12
        spacing: 16

        RowLayout {
            spacing: 8

            Repeater {
                model: 3

                Rectangle {
                    width: 10
                    height: 10
                    radius: 5
                    color: index === 0 ? "#8ba0bf" : "#5f6c84"
                    opacity: index === 0 ? 0.95 : 0.55
                }
            }
        }

        RowLayout {
            spacing: 12

            Text {
                text: ""
                color: "#c9d8f7"
                font.pixelSize: 28
                font.bold: true
            }

            Text {
                text: "Tet Dashboard"
                color: "#edf2ff"
                font.pixelSize: 18
                font.weight: Font.DemiBold
            }
        }

        Item { Layout.fillWidth: true }

        Repeater {
            model: ["F", "S", "C"]

            Rectangle {
                width: 32
                height: 32
                radius: 10
                color: "#33425b"
                border.color: "#43516b"
                border.width: 1

                Text {
                    anchors.centerIn: parent
                    text: modelData
                    color: "#9fb4da"
                    font.pixelSize: 14
                    font.weight: Font.DemiBold
                }
            }
        }

        Rectangle {
            width: 36
            height: 36
            radius: 18
            color: "transparent"
            border.color: "#7890b8"
            border.width: 1

            Text {
                anchors.centerIn: parent
                text: "U"
                color: "#c6d6f8"
                font.pixelSize: 16
                font.bold: true
            }
        }
    }
}

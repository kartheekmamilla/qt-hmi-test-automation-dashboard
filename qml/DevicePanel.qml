import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    radius: 12
    color: "#243045"
    border.color: "#2f3c52"
    border.width: 1

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 16
        spacing: 14

        RowLayout {
            Layout.fillWidth: true

            Rectangle {
                width: 20
                height: 20
                radius: 10
                color: "#28354d"

                Text {
                    anchors.centerIn: parent
                    text: "Q"
                    color: "#93a9cd"
                    font.pixelSize: 12
                    font.bold: true
                }
            }

            Text {
                text: "Devices"
                color: "#edf2ff"
                font.pixelSize: 15
                font.weight: Font.DemiBold
            }
        }

        Repeater {
            model: [
                { "name": "Oscilloscope 1", "subtitle": "Power Supply |2", "accent": "#49a4ff" },
                { "name": "Signal Analyzer 1", "subtitle": "Power Supply |2", "accent": "#eef2ff" },
                { "name": "Multimeter 1", "subtitle": "Power Supply |2", "accent": "#4aa8ff" },
                { "name": "Power Supply 1", "subtitle": "Power Supply |2", "accent": "#7ae36d" }
            ]

            Rectangle {
                Layout.fillWidth: true
                height: 72
                radius: 10
                color: "#222d40"
                border.color: "#2b384e"
                border.width: 1

                RowLayout {
                    anchors.fill: parent
                    anchors.margins: 12
                    spacing: 12

                    Rectangle {
                        width: 3
                        height: 30
                        radius: 2
                        color: modelData.accent
                    }

                    ColumnLayout {
                        Layout.fillWidth: true

                        Text {
                            text: modelData.name
                            color: "#f1f5ff"
                            font.pixelSize: 14
                            font.weight: Font.Medium
                        }

                        Text {
                            text: modelData.subtitle
                            color: "#7283a3"
                            font.pixelSize: 11
                        }
                    }

                    Rectangle {
                        width: 55
                        height: 22
                        radius: 11
                        color: "#3e9d5b"

                        Text {
                            anchors.centerIn: parent
                            text: "ONLINE"
                            color: "#ecfff1"
                            font.pixelSize: 10
                            font.weight: Font.DemiBold
                        }
                    }
                }
            }
        }

        Item { Layout.fillHeight: true }
    }
}

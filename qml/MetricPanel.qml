import QtQuick
import QtQuick.Layouts

Rectangle {
    radius: 12
    color: "#243045"
    border.color: "#2f3c52"
    border.width: 1

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 16
        spacing: 12

        Text {
            text: "Key Metrics"
            color: "#edf2ff"
            font.pixelSize: 15
            font.weight: Font.DemiBold
        }

        Rectangle {
            Layout.fillWidth: true
            height: 1
            color: "#2d3950"
        }

        GridLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            columns: 2
            columnSpacing: 18
            rowSpacing: 14

            Repeater {
                model: [
                    { "icon": "V", "label": "Voltage level", "value": "5.02V", "accent": "#6adf73" },
                    { "icon": "C", "label": "Current", "value": "1.03A", "accent": "#80a8ff" },
                    { "icon": "P", "label": "Power use", "value": "5.17W", "accent": "#f0b262" },
                    { "icon": "LA", "label": "Signal Level", "value": "-52.7 dbm", "accent": "#f3925b" }
                ]

                RowLayout {
                    Layout.fillWidth: true
                    spacing: 10

                    Rectangle {
                        width: 26
                        height: 26
                        radius: 7
                        color: "#223047"
                        border.color: modelData.accent
                        border.width: 1

                        Text {
                            anchors.centerIn: parent
                            text: modelData.icon
                            color: modelData.accent
                            font.pixelSize: modelData.icon === "LA" ? 11 : 12
                            font.weight: Font.DemiBold
                        }
                    }

                    ColumnLayout {
                        Layout.fillWidth: true
                        spacing: 2

                        Text {
                            text: modelData.label
                            color: "#7f90af"
                            font.pixelSize: 11
                        }

                        Text {
                            text: modelData.value
                            color: "#edf3ff"
                            font.pixelSize: 17
                            font.weight: Font.Medium
                        }
                    }
                }
            }
        }
    }
}

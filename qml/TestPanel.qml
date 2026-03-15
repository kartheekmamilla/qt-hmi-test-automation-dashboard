import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    radius: 12
    color: "#243045"
    border.color: "#2f3c52"
    border.width: 1

    property var fields: [
        { "label": "Test Type", "value": "Device Under Test" },
        { "label": "Test Type", "value": "Becu Veer" },
        { "label": "Test Option", "value": "Device Under Test" },
        { "label": "Test Duration", "value": "Out out" }
    ]

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 16
        spacing: 12

        Text {
            text: "Test Output"
            color: "#edf2ff"
            font.pixelSize: 15
            font.weight: Font.DemiBold
        }

        Rectangle {
            Layout.fillWidth: true
            height: 1
            color: "#2d3950"
            opacity: 0.9
        }

        GridLayout {
            Layout.fillWidth: true
            columns: 2
            columnSpacing: 14
            rowSpacing: 12

            Repeater {
                model: fields

                ColumnLayout {
                    Layout.fillWidth: true
                    spacing: 6

                    Text {
                        text: modelData.label
                        color: "#8ea1c5"
                        font.pixelSize: 11
                    }

                    ComboBox {
                        id: fieldCombo
                        Layout.fillWidth: true
                        model: [modelData.value]

                        delegate: ItemDelegate {
                            width: parent ? parent.width : 180
                            contentItem: Text {
                                text: modelData
                                color: "#d8e4fb"
                                font.pixelSize: 12
                                verticalAlignment: Text.AlignVCenter
                            }
                            background: Rectangle {
                                color: highlighted ? "#334766" : "#263246"
                                radius: 8
                            }
                        }

                        contentItem: Text {
                            text: fieldCombo.displayText
                            color: "#d8e4fb"
                            font.pixelSize: 12
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 10
                        }

                        indicator: Text {
                            x: fieldCombo.width - width - 12
                            y: (fieldCombo.height - height) / 2
                            text: "v"
                            color: "#93a8cd"
                            font.pixelSize: 12
                        }

                        background: Rectangle {
                            radius: 8
                            color: "#2b3750"
                            border.color: "#36445d"
                            border.width: 1
                        }
                    }
                }
            }
        }

        RowLayout {
            Layout.fillWidth: true
            spacing: 14

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                radius: 7
                color: "#4ca75e"

                Text {
                    anchors.centerIn: parent
                    text: "Start Test"
                    color: "#f4fff6"
                    font.pixelSize: 14
                    font.weight: Font.DemiBold
                }
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                radius: 7
                color: "#6a3744"

                Text {
                    anchors.centerIn: parent
                    text: "Stop Test"
                    color: "#fff1f3"
                    font.pixelSize: 14
                    font.weight: Font.DemiBold
                }
            }
        }
    }
}

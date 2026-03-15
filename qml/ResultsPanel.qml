import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    radius: 12
    color: "#243045"
    border.color: "#2f3c52"
    border.width: 1
    clip: true

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 14
        spacing: 10

        RowLayout {
            Layout.fillWidth: true

            Text {
                text: "Test Results"
                color: "#edf2ff"
                font.pixelSize: 15
                font.weight: Font.DemiBold
            }

            Item { Layout.fillWidth: true }

            Text {
                text: "..."
                color: "#8092b4"
                font.pixelSize: 20
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 30
            radius: 8
            color: "#212c3f"

            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 14
                anchors.rightMargin: 14

                Repeater {
                    model: [
                        { "label": "ID", "width": 48 },
                        { "label": "Test Name", "width": 200 },
                        { "label": "Status", "width": 88 },
                        { "label": "Duration", "width": 98 },
                        { "label": "Duration", "width": 92 },
                        { "label": "RESULT", "width": 120 }
                    ]

                    Text {
                        Layout.preferredWidth: modelData.width
                        text: modelData.label
                        color: "#7f90af"
                        font.pixelSize: 11
                        font.weight: Font.DemiBold
                    }
                }
            }
        }

        Repeater {
            model: [
                { "id": "01", "name": "Frequency Sweep", "status": "PASSED", "statusColor": "#5daa63", "d1": "01:00:00", "d2": "1.2020", "result": "8.83.86", "resultColor": "#f2b14c" },
                { "id": "02", "name": "DC Power Test", "status": "ONLINE", "statusColor": "#51b667", "d1": "07:00:00", "d2": "0:00:00", "result": "RUN/MAX", "resultColor": "#c7d7ff" },
                { "id": "03", "name": "Signal Analysis", "status": "PASSED", "statusColor": "#b15b67", "d1": "02:00:00", "d2": "1.2020", "result": "MINX / 3.3.27", "resultColor": "#c7d7ff" },
                { "id": "04", "name": "Load Test", "status": "FAILED", "statusColor": "#a75459", "d1": "07:00:00", "d2": "10:00:00", "result": "MIN / MAX", "resultColor": "#f3d89f" }
            ]

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                radius: 8
                color: index % 2 === 0 ? "#2a3549" : "#263246"
                border.color: "#2f3b51"
                border.width: 1

                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: 14
                    anchors.rightMargin: 14
                    spacing: 0

                    Rectangle {
                        Layout.preferredWidth: 32
                        Layout.preferredHeight: 24
                        radius: 7
                        color: "#20293a"
                        border.color: "#2d3850"
                        border.width: 1

                        Text {
                            anchors.centerIn: parent
                            text: modelData.id
                            color: "#91a5ca"
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                        }
                    }

                    Text {
                        Layout.leftMargin: 18
                        Layout.preferredWidth: 188
                        text: modelData.name
                        color: "#eff4ff"
                        font.pixelSize: 12
                    }

                    Rectangle {
                        Layout.preferredWidth: 58
                        Layout.preferredHeight: 20
                        radius: 11
                        color: modelData.statusColor

                        Text {
                            anchors.centerIn: parent
                            text: modelData.status
                            color: "#f5fbff"
                            font.pixelSize: 10
                            font.weight: Font.DemiBold
                        }
                    }

                    Text {
                        Layout.leftMargin: 28
                        Layout.preferredWidth: 90
                        text: modelData.d1
                        color: "#c8d6f0"
                        font.pixelSize: 12
                    }

                    Text {
                        Layout.preferredWidth: 84
                        text: modelData.d2
                        color: "#c8d6f0"
                        font.pixelSize: 12
                    }

                    Text {
                        Layout.preferredWidth: 114
                        text: modelData.result
                        color: modelData.resultColor
                        font.pixelSize: 12
                        font.weight: Font.Medium
                    }
                }
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 108
            radius: 10
            color: "#202a3b"
            border.color: "#2b3850"
            border.width: 1

            Item {
                anchors.fill: parent
                anchors.margins: 12

                Rectangle {
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    width: parent.width * 0.66
                    radius: 6
                    color: "#4f8c7b"
                    opacity: 0.18
                }

                Canvas {
                    anchors.fill: parent

                    onPaint: {
                        var ctx = getContext("2d")
                        ctx.resetTransform()
                        ctx.clearRect(0, 0, width, height)
                        ctx.strokeStyle = "#2e3b52"
                        ctx.lineWidth = 1

                        for (var i = 0; i <= 12; ++i) {
                            var x = i * width / 12
                            ctx.beginPath()
                            ctx.moveTo(x, 0)
                            ctx.lineTo(x, height)
                            ctx.stroke()
                        }

                        for (var j = 0; j <= 4; ++j) {
                            var y = j * height / 4
                            ctx.beginPath()
                            ctx.moveTo(0, y)
                            ctx.lineTo(width, y)
                            ctx.stroke()
                        }

                        ctx.strokeStyle = "#8fd5bf"
                        ctx.lineWidth = 2
                        ctx.beginPath()

                        var points = [0.58, 0.56, 0.57, 0.54, 0.55, 0.52, 0.53, 0.51, 0.50, 0.51, 0.49, 0.52, 0.50]
                        for (var p = 0; p < points.length; ++p) {
                            var px = p * width / (points.length - 1)
                            var py = height * points[p]
                            if (p === 0)
                                ctx.moveTo(px, py)
                            else
                                ctx.lineTo(px, py)
                        }
                        ctx.stroke()
                    }
                }

                Column {
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 16

                    Repeater {
                        model: [
                            { "value": "12.021", "unit": "+" },
                            { "value": "10.08", "unit": "/" },
                            { "value": "7.92", "unit": "*" }
                        ]

                        Row {
                            spacing: 10

                            Rectangle {
                                width: 18
                                height: 18
                                radius: 9
                                color: "#2c3750"

                                Text {
                                    anchors.centerIn: parent
                                    text: modelData.unit
                                    color: "#b0c3e5"
                                    font.pixelSize: 11
                                    font.bold: true
                                }
                            }

                            Text {
                                text: modelData.value
                                color: "#c7d7f7"
                                font.pixelSize: 13
                            }
                        }
                    }
                }
            }
        }
    }
}

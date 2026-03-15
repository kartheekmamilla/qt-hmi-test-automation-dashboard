import QtQuick
import QtCharts
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
        spacing: 12

        RowLayout {
            Layout.fillWidth: true

            Text {
                text: "Signal Analysis"
                color: "#edf2ff"
                font.pixelSize: 15
                font.weight: Font.DemiBold
            }

            Item { Layout.fillWidth: true }

            Rectangle {
                width: 118
                height: 26
                radius: 8
                color: "#2b3750"

                Text {
                    anchors.centerIn: parent
                    text: "ACQ 50MS"
                    color: "#7f90af"
                    font.pixelSize: 10
                    font.weight: Font.DemiBold
                }
            }
        }

        RowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            spacing: 14

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                radius: 10
                color: "#1d2738"
                border.color: "#28344a"
                border.width: 1

                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 12
                    spacing: 8

                    Text {
                        text: "Ripple 1.58 Ohm"
                        color: "#93a9cf"
                        font.pixelSize: 11
                    }

                    ChartView {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        antialiasing: true
                        backgroundColor: "transparent"
                        legend.visible: false
                        margins.top: 0
                        margins.bottom: 0
                        margins.left: 0
                        margins.right: 0

                        ValueAxis {
                            id: leftAxisX
                            min: 0
                            max: 30
                            tickCount: 6
                            labelsColor: "#8091b3"
                            gridLineColor: "#324159"
                        }

                        ValueAxis {
                            id: leftAxisY
                            min: 500
                            max: 3000
                            tickCount: 6
                            labelsColor: "#8091b3"
                            gridLineColor: "#324159"
                        }

                        AreaSeries {
                            axisX: leftAxisX
                            axisY: leftAxisY
                            color: "#274f94"
                            opacity: 0.35
                            borderColor: "#67a7ff"

                            upperSeries: LineSeries {
                                XYPoint { x: 0; y: 1550 }
                                XYPoint { x: 2; y: 1750 }
                                XYPoint { x: 4; y: 1600 }
                                XYPoint { x: 6; y: 2200 }
                                XYPoint { x: 8; y: 1680 }
                                XYPoint { x: 10; y: 1720 }
                                XYPoint { x: 12; y: 1660 }
                                XYPoint { x: 14; y: 1800 }
                                XYPoint { x: 16; y: 2880 }
                                XYPoint { x: 18; y: 2100 }
                                XYPoint { x: 20; y: 2600 }
                                XYPoint { x: 22; y: 1650 }
                                XYPoint { x: 24; y: 1780 }
                                XYPoint { x: 26; y: 1720 }
                                XYPoint { x: 28; y: 2260 }
                                XYPoint { x: 30; y: 1640 }
                            }

                            lowerSeries: LineSeries {
                                XYPoint { x: 0; y: 500 }
                                XYPoint { x: 30; y: 500 }
                            }
                        }
                    }

                    RowLayout {
                        Layout.fillWidth: true
                        spacing: 18

                        Text {
                            text: "Blue line   Ripple"
                            color: "#89a2c9"
                            font.pixelSize: 10
                        }

                        Text {
                            text: "Voltage + Current"
                            color: "#89a2c9"
                            font.pixelSize: 10
                        }
                    }
                }
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                radius: 10
                color: "#1d2738"
                border.color: "#28344a"
                border.width: 1

                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 12
                    spacing: 8

                    Text {
                        text: "Voltage 8.58 Ohm"
                        color: "#93a9cf"
                        font.pixelSize: 11
                    }

                    ChartView {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        antialiasing: true
                        backgroundColor: "transparent"
                        legend.visible: false
                        margins.top: 0
                        margins.bottom: 0
                        margins.left: 0
                        margins.right: 0

                        ValueAxis {
                            id: rightAxisX
                            min: 10
                            max: 13
                            tickCount: 6
                            labelsColor: "#8091b3"
                            gridLineColor: "#324159"
                        }

                        ValueAxis {
                            id: rightAxisY
                            min: 500
                            max: 3000
                            tickCount: 6
                            labelsColor: "#8091b3"
                            gridLineColor: "#324159"
                        }

                        LineSeries {
                            axisX: rightAxisX
                            axisY: rightAxisY
                            color: "#60a6ff"
                            width: 2.2

                            XYPoint { x: 10.0; y: 1800 }
                            XYPoint { x: 10.5; y: 1760 }
                            XYPoint { x: 11.0; y: 1710 }
                            XYPoint { x: 11.5; y: 1660 }
                            XYPoint { x: 12.0; y: 2250 }
                            XYPoint { x: 12.5; y: 2500 }
                            XYPoint { x: 13.0; y: 2860 }
                        }

                        LineSeries {
                            axisX: rightAxisX
                            axisY: rightAxisY
                            color: "#f2de72"
                            width: 2.2

                            XYPoint { x: 10.0; y: 1200 }
                            XYPoint { x: 10.5; y: 1220 }
                            XYPoint { x: 11.0; y: 1210 }
                            XYPoint { x: 11.5; y: 1130 }
                            XYPoint { x: 12.0; y: 1700 }
                            XYPoint { x: 12.5; y: 1760 }
                            XYPoint { x: 13.0; y: 1980 }
                        }
                    }

                    RowLayout {
                        Layout.fillWidth: true
                        spacing: 18

                        Text {
                            text: "Voltage & Current"
                            color: "#89a2c9"
                            font.pixelSize: 10
                        }

                        Text {
                            text: "Current (Amp)"
                            color: "#89a2c9"
                            font.pixelSize: 10
                        }
                    }
                }
            }
        }
    }
}

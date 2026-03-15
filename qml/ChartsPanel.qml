import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtCharts

Rectangle {

    radius: 12
    color: "#1a2437"

    ColumnLayout {

        anchors.fill: parent
        anchors.margins: 20
        spacing: 10

        Text {
            text: "Signal Analysis"
            color: "white"
            font.pixelSize: 18
        }

        RowLayout {

            Layout.fillWidth: true
            Layout.fillHeight: true
            spacing: 15

            ChartView {
                Layout.fillWidth: true
                Layout.fillHeight: true
                antialiasing: true
                theme: ChartView.ChartThemeDark

                LineSeries {
                    XYPoint {x:0;y:0}
                    XYPoint {x:1;y:2}
                    XYPoint {x:2;y:1}
                    XYPoint {x:3;y:3}
                    XYPoint {x:4;y:2}
                }
            }

            ChartView {
                Layout.fillWidth: true
                Layout.fillHeight: true
                antialiasing: true
                theme: ChartView.ChartThemeDark

                LineSeries {
                    XYPoint {x:0;y:2}
                    XYPoint {x:1;y:1}
                    XYPoint {x:2;y:3}
                    XYPoint {x:3;y:2}
                    XYPoint {x:4;y:3}
                }
            }
        }
    }
}

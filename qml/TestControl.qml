import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtCharts

Rectangle {

    color: "#1e293b"
    radius: 8

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 12

        Label {
            text: "Signal Analysis"
            color: "white"
            font.pixelSize: 16
            font.bold: true
        }

        ChartView {
            Layout.fillWidth: true
            Layout.fillHeight: true
            antialiasing: true
            theme: ChartView.ChartThemeDark

            LineSeries {
                name: "Signal"

                XYPoint { x:0; y:0 }
                XYPoint { x:1; y:2 }
                XYPoint { x:2; y:1 }
                XYPoint { x:3; y:3 }
                XYPoint { x:4; y:2 }
            }
        }
    }
}

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {

    radius: 12
    color: "#1a2437"

    ColumnLayout {

        anchors.fill: parent
        anchors.margins: 15

        Text {
            text: "Test Results"
            color: "white"
            font.pixelSize: 18
        }

        TableView {

            Layout.fillWidth: true
            Layout.fillHeight: true

            model: 4

            columnWidthProvider: function(){ return 200 }
            rowHeightProvider: function(){ return 45 }

            delegate: Rectangle {

                implicitWidth: 200
                implicitHeight: 45

                color: row % 2 ? "#2a3448" : "#1a2437"

                RowLayout {
                    anchors.fill: parent
                    anchors.margins: 10

                    Text {
                        text: ["Frequency Sweep","DC Power Test","Signal Analysis","Load Test"][row]
                        color: "white"
                    }

                    Item { Layout.fillWidth: true }

                    Rectangle {

                        width: 70
                        height: 24
                        radius: 12
                        color: row===2 ? "#ef4444" : "#16a34a"

                        Text {
                            anchors.centerIn: parent
                            text: row===2 ? "FAILED" : "PASSED"
                            color: "white"
                            font.pixelSize: 10
                        }
                    }
                }
            }
        }
    }
}

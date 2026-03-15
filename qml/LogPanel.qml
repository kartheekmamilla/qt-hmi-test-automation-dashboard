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
        spacing: 12

        Text {
            text: "Log Outputs"
            color: "#edf2ff"
            font.pixelSize: 15
            font.weight: Font.DemiBold
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            radius: 10
            color: "#202a3b"
            border.color: "#2a374d"
            border.width: 1

            Column {
                anchors.fill: parent
                anchors.margins: 14
                spacing: 14

                Repeater {
                    model: [
                        "11:39 PM | TMLICBAS.25.238 1 AVIG60 81.agg.",
                        "10 sec: no communication to the three communicates.",
                        "10.8 seconds engineer time seconds see communications.",
                        "10 sec: see active vibrations.",
                        "16 sec: no load filter communicat agg.",
                        "11:59 PM | TMLICBAS.25.238 1 AVIG60 82.agg."
                    ]

                    Text {
                        width: parent.width
                        text: modelData
                        color: index === 1 || index === 4 ? "#c9d7f1" : "#8a9bbd"
                        font.pixelSize: 11
                        wrapMode: Text.WordWrap
                    }
                }
            }
        }
    }
}

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {

    height: 60
    color: "#162033"

    RowLayout {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        Repeater {

            model: ["Device Status","Live Data","Test Automation","Logs","Logs Output"]

            Button {
                text: modelData
                checkable: true
                checked: index === 0
            }
        }
    }
}

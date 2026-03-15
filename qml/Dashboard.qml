import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

RowLayout {
    Layout.fillWidth: true
    Layout.fillHeight: true
    spacing: 14

    DevicePanel {
        Layout.preferredWidth: 245
        Layout.fillHeight: true
        Layout.alignment: Qt.AlignTop
    }

    ColumnLayout {
        Layout.fillWidth: true
        Layout.fillHeight: true
        Layout.preferredWidth: 820
        spacing: 14

        GraphPanel {
            Layout.fillWidth: true
            Layout.preferredHeight: 300
        }

        ResultsPanel {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }

    RightPanel {
        Layout.preferredWidth: 324
        Layout.fillHeight: true
    }
}

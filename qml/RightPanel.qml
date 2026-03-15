import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ColumnLayout {
    spacing: 14

    TestPanel {
        Layout.fillWidth: true
        Layout.preferredHeight: 250
    }

    LogPanel {
        Layout.fillWidth: true
        Layout.fillHeight: true
    }

    MetricPanel {
        Layout.fillWidth: true
        Layout.preferredHeight: 150
    }
}

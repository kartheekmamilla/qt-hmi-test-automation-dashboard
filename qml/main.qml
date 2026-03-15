import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

ApplicationWindow {
    visible: true
    width: Math.min(1440, Screen.desktopAvailableWidth)
    height: Math.min(860, Screen.desktopAvailableHeight)
    minimumWidth: 1180
    minimumHeight: 700
    title: "Test Dashboard"
    color: "#212b3b"

    Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#273245" }
            GradientStop { position: 1.0; color: "#1e2737" }
        }
    }

    Rectangle {
        anchors.fill: parent
        anchors.margins: Math.max(20, Math.min(width, height) * 0.03)
        radius: 28
        color: "#202b3d"
        border.color: "#2d3950"
        border.width: 1

        Rectangle {
            anchors.fill: parent
            anchors.margins: 1
            radius: parent.radius - 1
            color: "#1d2738"
        }

        ColumnLayout {
            anchors.fill: parent
            spacing: 0

            TopBar {
                Layout.fillWidth: true
            }

            Tabs {
                Layout.fillWidth: true
                Layout.leftMargin: 14
                Layout.rightMargin: 14
                Layout.topMargin: 12
            }

            Dashboard {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.leftMargin: 18
                Layout.rightMargin: 18
                Layout.topMargin: 14
                Layout.bottomMargin: 18
            }
        }
    }
}

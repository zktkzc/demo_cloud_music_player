import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ToolBar {
    background: Rectangle {
        color: "#00aaaa"
    }

    Layout.fillWidth: true
    width: parent.width
    RowLayout {
        anchors.fill: parent
        ToolButton {
            icon.source: "qrc:/images/music"
            width: 32
            height: 32
        }
        ToolButton {
            icon.source: "qrc:/images/about"
            width: 32
            height: 32
        }
        ToolButton {
            icon.source: "qrc:/images/small-screen"
            width: 32
            height: 32
        }
        Item {
            Layout.fillWidth: true
            height: 32
            Text {
                anchors.centerIn: parent
                text: qsTr("tkzc")
                font.family: "微软雅黑"
                font.pointSize: 15
            }
        }
        ToolButton {
            icon.source: "qrc:/images/minimize-screen"
            width: 32
            height: 32
        }
        ToolButton {
            icon.source: "qrc:/images/full-screen"
            width: 32
            height: 32
        }
        ToolButton {
            icon.source: "qrc:/images/power"
            width: 32
            height: 32
        }
    }
}

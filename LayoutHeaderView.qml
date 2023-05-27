import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

ToolBar {
    background: Rectangle {
        color: "#00aaaa"
    }

    Layout.fillWidth: true
    width: parent.width
    RowLayout {
        anchors.fill: parent
        MusicToolButton {
            iconSource: "qrc:/images/music"
            toolTip: "音乐"
        }
        MusicToolButton {
            iconSource: "qrc:/images/about"
            toolTip: "关于"
        }
        MusicToolButton {
            iconSource: "qrc:/images/small-screen"
            toolTip: "小窗播放"
        }
        Item {
            Layout.fillWidth: true
            height: 32
            Text {
                anchors.centerIn: parent
                text: qsTr("tkzc")
                font.family: "微软雅黑"
                font.pointSize: 15
                color: "#ffffff"
            }
        }
        MusicToolButton {
            iconSource: "qrc:/images/minimize-screen"
            toolTip: "最小化"
        }
        MusicToolButton {
            iconSource: "qrc:/images/full-screen"
            toolTip: "全屏"
        }
        MusicToolButton {
            iconSource: "qrc:/images/power"
            toolTip: "退出"
        }
    }
}

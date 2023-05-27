import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQuick.Window 2.15

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
            onClicked: {
                aboutPop.open()
            }
        }
        MusicToolButton {
            iconSource: "qrc:/images/about"
            toolTip: "关于"
            onClicked: {
                aboutPop.open()
            }
        }
        MusicToolButton {
            id: smallWindow
            iconSource: "qrc:/images/small-window"
            toolTip: "小窗播放"
            onClicked: {
                setWindowSize(330, 650)
                visible = false
                normalWindow.visible = true
            }
        }
        MusicToolButton {
            id: normalWindow
            iconSource: "qrc:/images/exit-small-window"
            toolTip: "退出小窗播放"
            visible: false
            onClicked: {
                setWindowSize()
                visible = false
                smallWindow.visible = true
            }
        }
        Item {
            Layout.fillWidth: true
            height: 32
            Text {
                anchors.centerIn: parent
                text: qsTr("tkzc")
                font.family: window.mFONT_FAMILY
                font.pointSize: 15
                color: "#ffffff"
            }
        }
        MusicToolButton {
            iconSource: "qrc:/images/minimize-screen"
            toolTip: "最小化"
            onClicked: {
                window.hide()
            }
        }
        MusicToolButton {
            id: fullScreen
            iconSource: "qrc:/images/full-screen"
            toolTip: "全屏"
            onClicked: {
                window.visibility = Window.Maximized
                fullScreen.visible = false
                smallScreen.visible = true
            }
        }
        MusicToolButton {
            id: smallScreen
            iconSource: "qrc:/images/small-screen"
            toolTip: "退出全屏"
            visible: false
            onClicked: {
                setWindowSize()
                window.visibility = Window.AutomaticVisibility
                smallScreen.visible = false
                fullScreen.visible = true
            }
        }
        MusicToolButton {
            iconSource: "qrc:/images/power"
            toolTip: "退出"
            onClicked: {
                Qt.quit()
            }
        }
    }

    Popup {
        id: aboutPop
        topInset: 0
        leftInset: 0
        rightInset: 0
        bottomInset: 0
        parent: Overlay.overlay
        x: (parent.width - width) / 2
        y: (parent.height - height) / 2
        width: 250
        height: 230
        background: Rectangle {
            color: "#e9f4ff"
            radius: 5
            border.color: "#2273a7ab"
        }
        contentItem: ColumnLayout {
            width: parent.width
            height: parent.height
            Layout.alignment: Qt.AlignHCenter
            Image {
                Layout.preferredHeight: 60
                source: "qrc:/images/music"
                Layout.fillWidth: true
                fillMode: Image.PreserveAspectFit
            }
            Text {
                text: qsTr("tkzc")
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 18
                color: "#8573a7ab"
                font.family: window.mFONT_FAMILY
                font.bold: true
            }
            Text {
                text: qsTr("这是我的Cloud Music Player")
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 16
                color: "#8573a7ab"
                font.family: window.mFONT_FAMILY
                font.bold: true
            }
            Text {
                text: qsTr("欢迎使用！")
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 16
                color: "#8573a7ab"
                font.family: window.mFONT_FAMILY
                font.bold: true
            }
        }
    }

    function setWindowSize(width = window.mWINDOW_WIDTH, height = window.mWINDOW_HEIGHT) {
        window.height = height
        window.width = width
        window.x = (Screen.desktopAvailableWidth - window.width) / 2
        window.y = (Screen.desktopAvailableHeight - window.height) / 2
    }
}

import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    width: 1200
    height: 800
    visible: true
    title: qsTr("Demo Cloud Music Player")

    ColumnLayout {
        anchors.fill: parent
        spacing: 0
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
        Frame {
            Layout.preferredWidth: 200
            Layout.fillHeight: true
            background: Rectangle {
                color: "#f0f0f0"
            }
            padding: 0
        }

        // 底部工具栏
        Rectangle {
            Layout.fillWidth: true
            height: 60
            color: "#00aaaa"
            RowLayout {
                anchors.fill: parent
                Item {
                    Layout.preferredWidth: parent.width / 10
                    Layout.fillWidth: true
                }
                Button {
                    Layout.preferredWidth: 50
                    icon.source: "qrc:/images/previous"
                    icon.width: 32
                    icon.height: 32
                }
                Button {
                    Layout.preferredWidth: 50
                    icon.source: "qrc:/images/stop"
                    icon.width: 32
                    icon.height: 32
                }
                Button {
                    Layout.preferredWidth: 50
                    icon.source: "qrc:/images/next"
                    icon.width: 32
                    icon.height: 32
                }
                Item {
                    Layout.preferredWidth: parent.width / 2
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.topMargin: 25
                    Text {
                        id: nameText
                        anchors.left: slider.left
                        anchors.bottom: slider.top
                        anchors.leftMargin: 5
                        text: qsTr("xxx-xxx")
                        font.family: "微软雅黑"
                        color: "#ffffff"
                    }
                    Text {
                        id: timeText
                        anchors.right: slider.right
                        anchors.bottom: slider.top
                        anchors.rightMargin: 5
                        text: qsTr("00:00/05:30")
                        font.family: "微软雅黑"
                        color: "#ffffff"
                    }
                    // 进度条
                    Slider {
                        id: slider
                        width: parent.width
                        Layout.fillWidth: true
                        height: 25
                        background: Rectangle {
                            x: slider.leftPadding
                            y: slider.topPadding + (slider.availableHeight - height) / 2
                            width: slider.availableWidth
                            height: 4
                            radius: 2
                            color: "#e9f4ff"
                            Rectangle {
                                width: slider.visualPosition * parent.width
                                height: parent.height
                                color: "#73a7ab"
                                radius: 2
                            }
                        }
                        handle: Rectangle {
                            x: slider.leftPadding + (slider.availableWidth - width)
                               * slider.visualPosition
                            y: slider.topPadding + (slider.availableHeight - height) / 2
                            width: 15
                            height: 15
                            radius: 5
                            color: "#f0f0f0"
                            border.color: "#73a7ab"
                            border.width: 0.5
                        }
                    }
                }
                Button {
                    Layout.preferredWidth: 50
                    icon.source: "qrc:/images/favorite"
                    icon.width: 32
                    icon.height: 32
                }
                Button {
                    Layout.preferredWidth: 50
                    icon.source: "qrc:/images/repeat"
                    icon.width: 32
                    icon.height: 32
                }
                Item {
                    Layout.preferredWidth: parent.width / 10
                    Layout.fillWidth: true
                }
            }
        }
    }
}

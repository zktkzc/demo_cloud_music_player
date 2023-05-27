import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQml 2.15

RowLayout {
    property var qmlList: [{
            "icon": "recommend-white",
            "value": "推荐内容",
            "qml": "DetailRecommendPageView"
        }, {
            "icon": "cloud-white",
            "value": "搜索音乐",
            "qml": "DetailSearchPageView"
        }, {
            "icon": "local-white",
            "value": "本地音乐",
            "qml": "DetailLocalPageView"
        }, {
            "icon": "history-white",
            "value": "播放历史",
            "qml": "DetailHistoryPageView"
        }, {
            "icon": "favorite-big-white",
            "value": "我喜欢的",
            "qml": "DetailFavoritePageView"
        }]

    Frame {
        Layout.preferredWidth: 200
        Layout.fillHeight: true
        background: Rectangle {
            color: "#aa00aaaa"
        }
        padding: 0

        ColumnLayout {
            anchors.fill: parent

            Item {
                Layout.fillWidth: true
                Layout.preferredHeight: 150

                MusicRoundImage {
                    anchors.centerIn: parent
                    height: 100
                    width: 100
                    borderRadius: 100
                }
            }

            ListView {
                id: menuView
                height: parent.height
                Layout.fillHeight: true
                Layout.fillWidth: true
                model: ListModel {
                    id: menuViewModel
                }
                delegate: menuViewDelegate
                highlight: Rectangle {
                    color: "#aa73a7ab"
                }
                // 关闭动画
                // highlightMoveDuration: 0
                // highlightResizeDuration: 0
            }
        }

        Component {
            id: menuViewDelegate
            Rectangle {
                id: menuViewDelegateItem
                height: 50
                width: 200
                color: "#aa00aaaa"
                RowLayout {
                    anchors.fill: parent
                    anchors.centerIn: parent
                    spacing: 15
                    Item {
                        width: 30
                    }
                    Image {
                        source: "qrc:/images/" + icon
                        Layout.preferredHeight: 20
                        Layout.preferredWidth: 20
                    }
                    Text {
                        text: value
                        Layout.fillWidth: true
                        height: 50
                        font.family: window.mFONT_FAMILY
                        font.pointSize: 12
                        color: "#ffffff"
                    }
                }

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        color = "#aa73a7ab"
                    }
                    onExited: {
                        color = "#aa00aaaa"
                    }
                    onClicked: {
                        repeater.itemAt(
                                    menuViewDelegateItem.ListView.view.currentIndex).visible = false
                        menuViewDelegateItem.ListView.view.currentIndex = index
                        var loader = repeater.itemAt(index)
                        loader.visible = true
                        loader.source = qmlList[index].qml + ".qml"
                    }
                }
            }
        }

        Component.onCompleted: {
            menuViewModel.append(qmlList)
            var loader = repeater.itemAt(0)
            loader.visible = true
            loader.source = qmlList[0].qml + ".qml"
        }
    }

    Repeater {
        id: repeater
        model: qmlList.length

        Loader {
            visible: false
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}

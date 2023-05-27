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

        LayoutHeaderView {
            id: layoutHeaderView
        }

        PageHomeView {
            id: pageHomeView
        }

        // 底部工具栏
        LayoutBottomView {
            id: layoutBottomView
        }
    }
}

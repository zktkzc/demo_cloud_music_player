import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

ApplicationWindow {
    property int mWINDOW_WIDTH: 1200
    property int mWINDOW_HEIGHT: 800
    property string mFONT_FAMILY: "微软雅黑"

    id: window
    width: mWINDOW_WIDTH
    height: mWINDOW_HEIGHT
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

import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

ApplicationWindow {
    property int mWindow_Width: 1200
    property int mWindow_Height: 800

    id: window
    width: mWindow_Width
    height: mWindow_Height
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

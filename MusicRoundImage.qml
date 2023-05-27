import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Item {
    property string imgSrc: "qrc:/images/player"
    property int borderRadius: 5

    Image {
        id: image
        source: imgSrc
        anchors.centerIn: parent
        smooth: true
        width: parent.width
        height: parent.height
        fillMode: Image.PreserveAspectCrop // 保持长宽比来裁剪
        antialiasing: true // 抗锯齿
        visible: false
    }

    Rectangle {
        id: mask
        anchors.fill: parent
        color: "black"
        radius: borderRadius
        smooth: true
        antialiasing: true
        visible: false
    }

    OpacityMask {
        anchors.fill: image
        source: image
        maskSource: mask
        visible: true
        antialiasing: true
    }
}

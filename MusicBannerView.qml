import QtQuick 2.15
import QtQuick.Controls 2.15

Frame {
    property var bannerList: []
    property int current: 0

    MusicRoundImage {
        id: leftImage
        width: parent.width * 0.6
        height: parent.height * 0.8
        imgSrc: getLeftImgSrc()
        anchors {
            left: parent.left
            bottom: parent.bottom
            bottomMargin: 20
        }
    }

    MusicRoundImage {
        id: centerImage
        width: parent.width * 0.6
        height: parent.height
        imgSrc: getCenterImgSrc()
        anchors.centerIn: parent
        z: 2
    }

    MusicRoundImage {
        id: rightImage
        width: parent.width * 0.6
        height: parent.height * 0.8
        imgSrc: getRightImgSrc()
        anchors {
            right: parent.left
            bottom: parent.bottom
            bottomMargin: 20
        }
    }

    function getLeftImgSrc() {
        return bannerList.length ? bannerList[(current - 1 + bannerList.length)
                                              % bannerList.length].imageUrl : ""
    }

    function getCenterImgSrc() {
        return bannerList.length ? bannerList[current].imageUrl : ""
    }

    function getRightImgSrc() {
        return bannerList.length ? bannerList[(current + 1 + bannerList.length)
                                              % bannerList.length].imageUrl : ""
    }
}

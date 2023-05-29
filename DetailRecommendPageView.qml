import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

// 推荐内容
ScrollView {
    clip: true // 超出部分自动裁剪

    ColumnLayout {
        Text {
            text: qsTr("推荐内容")
            font.family: window.mFONT_FAMILY
            font.pointSize: 18
        }

        MusicBannerView {
            id: bannerView
            Layout.preferredHeight: (window.width - 200) * 0.3
            Layout.preferredWidth: window.width - 200
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }

    Component.onCompleted: {
        getBannerList()
    }

    function getBannerList() {

        function onReply(reply) {
            http.onReplySignal.diconnect(onReply)
            var banners = JSON.parse(reply).banners
            bannerView.bannerList = banners
        }

        http.onReplySignal.connect(onReply)
        http.connet("banner")
    }
}

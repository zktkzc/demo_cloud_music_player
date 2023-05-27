import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    property string iconSource: ""
    property int iconWidth: 32
    property int iconHeight: 32
    property bool isCheckable: false
    property bool isChecked: false
    property string toolTip: ""

    id: self
    icon.source: iconSource
    icon.height: iconHeight
    icon.width: iconWidth
    icon.color: self.down || (isCheckable
                              && self.checked) ? "#ffffff" : "#e2f0f8"
    ToolTip.text: toolTip
    ToolTip.visible: hovered

    background: Rectangle {
        color: self.down || (isCheckable
                             && self.checked) ? "#497563" : "#20e9f4ff"
        radius: 3
    }
    checkable: isCheckable
    checked: isChecked
}

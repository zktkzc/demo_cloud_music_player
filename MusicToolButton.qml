import QtQuick 2.15
import QtQuick.Controls 2.15

ToolButton {
    property string iconSource: ""
    property bool isCheckable: false
    property bool isChecked: false
    property string toolTip: ""

    id: self
    icon.source: iconSource
    icon.color: self.down || (isCheckable
                              && self.checked) ? "#00000000" : "#eeeeee"
    ToolTip.text: toolTip
    ToolTip.visible: hovered

    background: Rectangle {
        color: self.down || (isCheckable
                             && self.checked) ? "#eeeeee" : "#00000000"
    }
    checkable: isCheckable
    checked: isChecked
}

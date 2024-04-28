import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5


ToolButton{
    property string iconSource:""
    property string toolTip:""
    property bool isCheckable:false
    property bool isChecked:false


    id:self
    icon.source:iconSource

    
    ToolTip.text:toolTip
    ToolTip.visible:hovered

    background:Rectangle{
        color:self.down||(isCheckable&&self.checked)?"#eeeeeeee":"#00000000"
       
    }
    icon.color:self.down||(isCheckable&&self.checked)?"#00000000":"#eeeeeeee"
    checkable:isCheckable
    checked:isChecked
}

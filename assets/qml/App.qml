import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
Window {
    id:window

    property int mWINDOW_WIDTH:1200
    property int mMINDOW_HEIGHT:800
    width:mWINDOW_WIDTH
    height:mMINDOW_HEIGHT
    visible:true
    title:qsTr("Demo Cloud Music Player")

  
    ColumnLayout{
        anchors.fill:parent
        spacing: 0
        //tool bar
        LayoutHeaderView{
            
        }
        PageHomeView{
            
        }
        //bottom bar
        LayoutBottomView{

        }
    }

}

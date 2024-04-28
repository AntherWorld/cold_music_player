import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ToolBar{
            background:Rectangle{
                color:"#00AAAA"
                                }
            width:parent.width
            Layout.fillWidth:true
            RowLayout{
                anchors.fill:parent
                        MusicToolButton{
                            iconSource:"qrc:images/music"
                            width:32
                            height:32
                            toolTip:"关于"
                            onClicked:{
                                aboutpopup.visible=true
                            }
                        }
                        MusicToolButton{
                            iconSource:"qrc:images/about"
                            width:32
                            height:32
                            toolTip:"续加仪博客"
                            onClicked: {
                                Qt.openUrlExternally("https://www.hyz.cool")
                            }
                        }
                        MusicToolButton{
                            id:normalWindow
                            iconSource:"qrc:images/exit-small-window"
                            width:32
                            height:32
                            visible:false
                            toolTip:"退出小窗体"
                            onClicked: {
                                setWindowSize()
                                normalWindow.visible=false
                                smallWindow.visible=true
                                
                            }
                        }
                        MusicToolButton{
                            id:smallWindow
                            iconSource:"qrc:images/small-window"
                            width:32
                            height:32
                            visible:true
                            toolTip:"小窗体"
                            onClicked: {
                                window.height=650
                                window.width=330

                                visible:false
                                normalWindow.visible=true
                                smallWindow.visible=false
                            }
                        }
                        Item{
                            Layout.fillWidth:true
                            height:32
                            width:32
                            Text{
                                anchors.centerIn:parent
                                text:qsTr("续加仪")
                                font.family:"微软雅黑"
                                font.pointSize:15
                            }
                        }
                        MusicToolButton{
                            iconSource:"qrc:images/minimize-screen"
                            width:32
                            height:32
                            toolTip:"最小化"
                            onClicked: {
                                window.hide()
                            }
                        }
                        MusicToolButton{
                            id:resize
                            iconSource:"qrc:images/small-screen"
                            width:32
                            height:32
                            toolTip:"退出全屏"
                            visible: false
                            onClicked: {
                                setWindowSize()
                                resize.visible=flase
                                maxWindow.visible=true

                            }
                        }
                        MusicToolButton{
                            id:maxWindow
                            iconSource:"qrc:images/full-screen"
                            width:32
                            height:32
                            toolTip:"全屏"
                            visible: true
                            onClicked: {
                                window.visibility=Window.Maximized
                                maxWindow.visible=false
                                resize.visible=true
                            }
                        }
                        MusicToolButton{
                            iconSource:"qrc:images/power"
                            width:32
                            height:32
                            toolTip:"退出"
                        }
                  
             }
             Popup{
                id:aboutpopup
                parent: Overlay.overlay
                x:(parent.width-width)/2
                y:(parent.height-height)/2
                topInset: 0
                leftInset: 0
                rightInset: 0
                bottomInset: 0

                width:250
                height:230

                background:Rectangle{
                    color:"#e9f4ff"
                    radius:5
                    border.color:"#2273a7ab"
                }
                contentItem:ColumnLayout{

                    width:250
                    height:230
                    Layout.alignment: Qt.AlignHCenter
                    Image{
                        Layout.preferredHeight:60
                        Layout.fillWidth:true
                        source:"qrc:/images/music"
                        fillMode: Image.PreserveAspectFit
                    }
                    Text{
                        text:qsTr("续加仪")
                        Layout.fillWidth:true
                        horizontalAlignment:Text.AlignHCenter
                        font.pixelSize: 18
                        color:"#8573a7ab"
                        font.family: "微软雅黑"
                        font.bold: true
                    }   
                    Text{
                        text:qsTr("这是我的cold music player")
                        Layout.fillWidth:true
                        horizontalAlignment:Text.AlignHCenter
                        font.pixelSize: 16
                        color:"#8573a7ab"
                        font.family: "微软雅黑"
                        font.bold: true
                    }
                    Text{
                        text:qsTr("www.hyz.cool")
                        Layout.fillWidth:true
                        horizontalAlignment:Text.AlignHCenter
                        font.pixelSize: 16
                        color:"#8573a7ab"
                        font.family: "微软雅黑"
                        font.bold: true
                    }
                }
             }
            function setWindowSize(width=window.mWINDOW_WIDTH,height=window.mMINDOW_HEIGHT){
                window.height=mMINDOW_HEIGHT
                window.width=mWINDOW_WIDTH
                window.x=(Screen.desktopAvailableWidth-window.width)/2
                window.y=(Screen.desktopAvailableHeight-window.height)/2

            }

        
}

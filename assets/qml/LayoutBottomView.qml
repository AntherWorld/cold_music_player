import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Rectangle{
            Layout.fillWidth:true
            height:60
            color:"#00AAAA"

            RowLayout{
                        anchors.fill: parent
                         Item{
                            Layout.preferredWidth:parent.width/10 
                            //Layout.fillHeight:true
                            Layout.fillWidth:true
                            }

                        MusicIconButton{
                           // Layout.preferredWidth:50
                            iconWidth:32
                            iconHeight:32
                            icon.source:"qrc:/images/previous"
                            toolTip:"上一首"
                              }
                        MusicIconButton{
                           // Layout.preferredWidth:50
                            iconWidth:32
                            iconHeight:32
                            iconSource:"qrc:/images/stop"
                            toolTip:"暂停"
                              }
                        MusicIconButton{
                            // Layout.preferredWidth:50
                            iconWidth:32
                            iconHeight:32
                            iconSource:"qrc:/images/next"
                            toolTip:"下一首"
                              }
                        Item{
                            Layout.preferredWidth:parent.width/2  
                            Layout.fillHeight:true
                            Layout.fillWidth:true
                            //Layout.fillWidth:true
                            Layout.topMargin:20
                                Text{
                                    id:nameText
                                    anchors.left: slider.left
                                    anchors.bottom:slider.top
                                   // anchors.bottomMargin:2
                                    text:"续加仪-续加仪"
                                    font.family:"微软雅黑"
                                    color:"#ffffff"
                                }
                                Text{
                                    id:timeText
                                    anchors.right: slider.right
                                    anchors.bottom:slider.top
                                    anchors.rightMargin:5
                                    //anchors.bottomMargin:2
                                    text:"00:00/05:30"
                                    font.family:"微软雅黑"
                                    color:"#ffffff"
                                }
                                Slider{
                                    id: slider
                                    width: parent.width
                                    Layout.fillWidth:true
                                    Layout.topMargin:5
                                    height: 25
                                     background:Rectangle{
                                        x:slider.leftPadding
                                        y:slider.topPadding+(slider.availableHeight-height)/2
                                         width:slider.availableWidth
                                         height:4
                                         radius:2
                                        color: "#e9f4ff"
                                        Rectangle{
                                            width:slider.visualPosition*parent.width
                                            height:parent.height
                                            color:"#73a7ab"
                                        }
                                       
                                        
                                     }
                                    handle:Rectangle{
                                        x:slider.leftPadding+(slider.availableWidth-width)*slider.visualPosition
                                        y:slider.topPadding+(slider.availableHeight-height)/2

                                        color:"#f0f0f0"
                                        border.color:"#73a7ab"
                                        border.width:0.5
                                        width:15
                                        height:15
                                        radius:5

                                    }

                                }
                            }
                        MusicIconButton{
                           //  Layout.preferredWidth:50
                            iconWidth:32
                            iconHeight:32
                            iconSource:"qrc:/images/favorite"
                            toolTip:"收藏"
                              }
                        MusicIconButton{
                            // Layout.preferredWidth:50
                            iconWidth:32
                            iconHeight:32
                            iconSource:"qrc:/images/repeat"
                            toolTip:"循环"
                              }
                            
                         Item{
                            
                            Layout.preferredWidth:parent.width/10
                            //Layout.fillHeight:true
                            Layout.fillWidth:true
                            }
                
                        
                    }
}

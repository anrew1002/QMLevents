import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3

Window {
    id:win
    width: 320
    height: 400
    visible: true
    title: qsTr("Hello World")
    Item{
        anchors.fill:  parent
        ColumnLayout{

            anchors.fill:  parent
            spacing: 5

            TextBlock{
                id: header
                text: "Header"
                Layout.fillWidth: true
                height: 100

            }
            TextBlock{
                id: container
                text: "Content"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
            Item{
                height: 100
                Layout.fillWidth: true
                RowLayout{
                    anchors.fill:  parent
                    spacing:5
                    ButtonComp{
                        id: btn1
                        text: "1"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        MouseArea {
                            id:mouse
                            hoverEnabled: true
                            anchors.fill: parent
                            onPressed: {btn1.width+=1;btn1.height+=1;
                                btn1.color="darkred";btn1.color="red";
                                btn2.color="grey";btn3.color="grey";
                                container.text="first";;header.text="Header 1"}
                            onReleased: {btn1.width-=1; btn1.height-=1;
//                                btn1.color="red";btn1.color="grey"
                            }
//                            onEntered:
//                            onExited:
                        }
                    }
                    ButtonComp{
                        id: btn2
                        text: "2"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        MouseArea {
                            id:mouse2
                            hoverEnabled: true
                            anchors.fill: parent
                            onPressed: {btn2.width+=1;btn2.height+=1;
                                btn2.color="darkred";btn2.color="red";
                                btn3.color="grey";btn1.color="grey";
                                container.text="second";header.text="Header 2"}
                            onReleased: {btn2.width-=1; btn2.height-=1;
//                                btn1.color="red";btn1.color="grey"
                            }
//                            onEntered:
//                            onExited:
                        }
                    }
                    ButtonComp{
                        id: btn3
                        text: "3"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        MouseArea {
                            id:mouse3
                            hoverEnabled: true
                            anchors.fill: parent
                            onPressed: {btn3.width+=1;btn3.height+=1;
                                btn3.color="darkred";btn3.color="red";
                                btn1.color="grey";btn2.color="grey";
                                container.text="third";header.text="Header 3"}
                            onReleased: {btn3.width-=1; btn3.height-=1;
//                                btn1.color="red";btn1.color="grey"
                            }
//                            onEntered:
//                            onExited:
                        }
                    }

                }
            }

            Item{
                Layout.fillHeight: parent
            }
        }

    }

}

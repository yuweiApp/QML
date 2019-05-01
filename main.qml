import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id:win
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    property int num: 0
    Rectangle{
        width:parent.width;height: parent.height
        border.color: "red"
        border.width: 5
        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log(mouseX + ":" + mouseY);
                mouse.accepted = false;
            }
        }
        OtherAnimation{
            x:50;y:30
        }
    }

}

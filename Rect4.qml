import QtQuick 2.0

Rectangle{
    id:rect4
    width: 80;height: 80
    color:"lightblue"
    radius: 10
    MouseArea{
        anchors.fill: parent
        propagateComposedEvents: true
        onClicked: {
            console.log("rect4");
            mouse.accepted = false;
        }
    }

    Text{
        anchors.centerIn: parent
        font.pixelSize: 12
        text:"改变行为"
    }
    Behavior on x{
        PropertyAnimation{
            duration: 1000
            easing.type: Easing.InQuart
        }
    }
    Behavior on y{
        PropertyAnimation{
            duration: 1000
            easing.type: Easing.InQuart
        }
    }
}

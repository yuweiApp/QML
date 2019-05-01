import QtQuick 2.0

Rectangle{
    id:rect2
    width:80;height:80
    radius:10
    color:"lightgreen"
    Text{
        anchors.centerIn: parent
        font.pixelSize: 12
        text:"信号处理"
    }
    MouseArea{
        anchors.fill: parent
        onClicked: PropertyAnimation{
            target: rect2
            property:"y"
            from:50
            to:300
            duration: 30
            loops:Animation.Infinite
            easing.type: Easing.Linear
        }
    }
}

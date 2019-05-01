import QtQuick 2.0

Rectangle{
    width:80;height:80
    border.color:"green"
    ColorAnimation on color{
        from: "blue"
        to: "aqua"
        duration: 5000
        loops:Animation.Infinite
    }
    RotationAnimation{
        from:0
        to:360
        duration: 5000
        loops:Animation.Infinite
        direction: RotationAnimation.Clockwise
    }
    NumberAnimation on radius{
        from:0
        to:40
        duration: 5000
        loops:Animation.Infinite
    }
    PropertyAnimation on x{
        from:50
        to:500
        duration: 5000
        easing.type: Easing.InOutQuad//先加速后减速
    }
}

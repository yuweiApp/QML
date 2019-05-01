﻿import QtQuick 2.0
import "myJS.js" as Logic
Rectangle{
    id:rect
    width:60;height:60
    gradient: Gradient{
        GradientStop{position: 0.0;color:"yellow"}
        GradientStop{position: 0.33;color:"blue"}
        GradientStop{position: 1.0;color:"aqua"}
    }

    Behavior on rotation {
        RotationAnimation{
            direction: RotationAnimation.Clockwise
        }
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            rect.rotation = Logic.getRandomNum();
        }
    }
}

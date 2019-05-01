import QtQuick 2.0

Rectangle{
    id:btn
    width:100;height:62
    color:"teal"
    border.color:"aqua"
    border.width:3
    Text{
        id:label
        anchors.centerIn: parent
        font.pixelSize: 16
        text:"开始"
    }
    MouseArea{
        anchors.fill: parent
        onClicked:{
            label.text="按钮已经按下";
            label.font.pixelSize=11
            btn.color="aqua";
            btn.border.color="teal"
            console.log("子控件width:"+width)
            content1.text="zoufeng"
            //先要解除原来的锚属性，在设置新的锚属性
            rec2.anchors.left=undefined
            rec2.anchors.left=btn.anchors.left
            rec2.anchors.leftMargin=30
        }
    }
}

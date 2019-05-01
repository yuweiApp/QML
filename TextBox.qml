import QtQuick 2.0

FocusScope{
    property alias label:label.text
    property alias text:input.text
    Row{
        spacing: 10
        Text{
            id:label
            anchors.verticalCenter: rect.verticalCenter
            text:"标签:"
        }
        Rectangle{
            id:rect
            width: 300;height: 40
            color:"white"
            border.color: "red"
            TextInput{
                id:input
                //anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.margins: 4
                focus:true
                text:"请输入内容......"
                horizontalAlignment: TextInput.AlignLeft

                clip:true

            }
        }
    }
}

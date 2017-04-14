import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true

    signal qmlSignal(string msg)//сигнал окна

    Column{

        spacing: 5//отступы от других эл-в
        anchors.centerIn: parent//центровка по отношению к окну(родитель)

        Rectangle{
            id:button

            width: 100
            height: 30//все размеры в пикселях

            color: "#0066ff"//цвет в rgb

            Text{
                id:buttonLabel
                text: "Сложить"
                color: "#ffffff"
                anchors.centerIn: parent;
            }

            MouseArea{
                id:mouseArea1
                anchors.fill: parent//реагировать на нажатии мышкой в любом месте кнопки
                onClicked: {qmlSignal("яблок")}//реакция на нажатие
            }
        }

        Rectangle{
            id:textinputRect1

            width: 100
            height: 18

            color:"#ffffff"

            TextInput{
                id:textinput1
                objectName: "textinput1"
                color: "#0066ff"
                selectionColor: "yellow"

                font.pixelSize: 12
                width:parent.width-4
                anchors.centerIn: parent
                focus:true
                text:"1"
            }
        }

        Rectangle{
            id:textinputRect2
            width: 100
            height: 18
            color: "#ffffff"

            TextInput{
                id:textinput2
                objectName: "textinput2"
                color:"#0066ff"
                selectionColor: "red"
                font.pixelSize: 12
                width:parent.width-4
                anchors.centerIn: parent
                focus:true
                text:"1"
            }
        }

        Rectangle{
            id:resultRect
            width: 100
            height: 18
            color:"#ffffff"

            TextEdit{
                id:resultRectText
                objectName: "resultRectText"
                wrapMode:TextEdit.Wrap
                width: parent.width-4
                readOnly: true

            }
        }
    }
}

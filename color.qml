import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3
import QtGraphicalEffects 1.15

ApplicationWindow {
    visible: true
    width: 400
    height: 200
    title: "Color Picker"

    Column {
        spacing: 10
        anchors.centerIn: parent

        Rectangle {
            id: colorRect
            width: 100
            height: 100
            color: "#000000" // Default color
        }

        Button {
            text: "Select Color"
            onClicked: colorDialog.open()
        }

        Label {
            text: "Selected Color (Hex): " + colorRect.color
        }
    }

    ColorDialog {
        id: colorDialog
        onAccepted: {
            colorRect.color = colorDialog.color
        }
    }
}


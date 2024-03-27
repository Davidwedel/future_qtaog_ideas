import QtQuick 2.5
import QtQuick.Controls 2.5

/* The point of this is to demonstrate how a button can have text outside the clickable area, 
 * like if we want a text title, but still have Button{} as the base, so we can
 * still use the default values.
 * A "catcher" is necessary to keep the values from carrying through to the button underneath*/
ApplicationWindow{
	width: 150
	height: 150
	Button{
		id: button
		width: 130
		topInset: label.height
		topPadding: topInset
		height: 130
		Label{
			id: label
			anchors.left: parent.left
			anchors.top: parent.top
			height: 70
			width: parent.width
			text: "lable"
			Rectangle{
				anchors.fill: label
				color: "blue"
			}
			MouseArea{
				anchors.fill: label
				onClicked: console.log("click caught-kept from button")
			}
		}
	}
}

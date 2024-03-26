import QtQuick 2.15
import QtQuick.Controls 2.15
import QtLocation 5.15

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Map Window"

    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Map {
        id: map
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(37.7749, -122.4194) // San Francisco coordinates
        zoomLevel: 10

        MouseArea {
            anchors.fill: parent
            onClicked: {
                var coord = map.toCoordinate(Qt.point(mouse.x, mouse.y))
                console.log("Clicked Latitude:", coord.latitude, "Longitude:", coord.longitude)
            }
        }
    }
}


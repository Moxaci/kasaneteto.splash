import QtQuick 2.15
import QtQuick.Window 2.15

Image {
    id: root
    source: "images/background.png"
    fillMode: Image.PreserveAspectCrop

    AnimatedImage {
        id: tetoAnimation
        anchors.centerIn: parent
        source: "images/teto_animacion.gif"
        fillMode: Image.PreserveAspectFit
        width: parent.width * 0.45 // Controla el tamaño en pantalla (45% del ancho total)
        playing: true

        // Animación de desvanecimiento de entrada al cargar
        opacity: 0
        NumberAnimation on opacity {
            to: 1
            duration: 600
            easing.type: Easing.InOutQuad
        }
    }
}

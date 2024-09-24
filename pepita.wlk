import extras.*
import wollok.game.*

object pepita {

	var property energia = 100
	var property position = game.at(4,4)

	method image() {
		return if (self.estaEnElNido()) {
		"pepita-grande.png" 
		}else if (self.position()== silvestre.position()){
			"pepita-gris.png" 
		}else "pepita.png"
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method vola(kms) {
		energia = energia - kms * 9
	}

	method irA(nuevaPosicion) {
		self.vola(position.distance(nuevaPosicion))
		position = nuevaPosicion
	}

	method estaCansada() {
		return energia <= 0
	}

	method estaEnElNido() {
		return position == nido.position()
	}
	
	
	method estaEnElSuelo() {
		return position.y() == 0 
	}

}


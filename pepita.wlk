import extras.*
import wollok.game.*

object pepita {

	var property energia = 100
	var property position = game.at(4,4)

	method posicion() = position
	
	method image() {
		return if (self.estaEnElNido()) {
		"pepita-grande.png" 
		}else if ((self.position()== silvestre.position()) || energia <= 0){
			"pepita-gris.png" 
		}else "pepita.png"
	}

	method enegia() {
	  return energia
	}
	method energuia(cantidad) {
		energia = cantidad
		
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method vola(kms) {
		energia = energia - (kms * 9)
	}

	method irA(nuevaPosicion) {
		if(nuevaPosicion.x().between(0,9) && nuevaPosicion.y().between(0,9)){
			if(!self.estaCansada() ){
			self.vola(position.distance(nuevaPosicion))
			position = nuevaPosicion
			}
		}
		if(energia <= 0){
			self.terminar()
		}
	}

	method gravedad() {
		if(self.position().y() >= 1){
	  	position = self.position().down(1)
	  	}
	}

	method terminar() {
	  game.stop()
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


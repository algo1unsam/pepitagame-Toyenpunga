import wollok.game.*

object manzana {

	method image() = "manzana.png"

	method position() = game.at(1, 8)

	method teEncontro(ave) {
		game.say(ave, "manzana")
	}

	method energiaQueOtorga() = 40

}

object alpiste {

	method image() = "alpiste.png"

	method teEncontro(ave) {
		game.say(ave, "alpiste")
	}

	method position() = game.at(2, 2)

	method energiaQueOtorga() = 70

}


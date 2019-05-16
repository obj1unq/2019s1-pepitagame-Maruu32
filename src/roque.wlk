import wollok.game.*

object roque {

	var property position = game.at(4, 4)
	var property comida = null

	method move(nuevaPosicion) = self.position(nuevaPosicion)

	method image() = "jugador.png"

	method agarrarComida(food) {
			self.soltarComida()
			comida = food
			game.removeVisual(food)
		
	}

	method soltarComida() {
		if (comida != null) {
			comida.position(game.at((0.randomUpTo(10)).truncate(0), (0.randomUpTo(10)).truncate(0)))
			game.addVisual(comida)
		}
	}

	method darComida(ave) {
		if (comida != null) { 
			ave.come(comida)
			self.soltarComida()
			self.comida(null)
		}
	}

}


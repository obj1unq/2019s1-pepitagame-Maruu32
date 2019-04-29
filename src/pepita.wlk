import ciudades.*
import wollok.game.*
import comidas.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires

	var property position = game.at(3,3)
	method image() {
		if (energia > 100){
			return "pepita-gorda-raw.png"
		}else{
			return "pepita.png" 
		}		
	}
	
	method esComida() = false
	method esAve() = true
	
	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method chocasteCon(roque){
			roque.darComida(self)
	}
	
//		PARTE 1
//		if (ciudad != unaCiudad && energia >= self.energiaNecesariaParaVolarA(unaCiudad.position())) {
//	method volaHacia(unaCiudad) {
//			self.move(unaCiudad.position())
//			ciudad = unaCiudad
//		}else self.quejarse(unaCiudad)
//	}

//	method quejarse(unaCiudad) {
//		 if (ciudad == unaCiudad){
//			game.say(self, "ya estoy en " + ciudad)
//		}else{
//			game.say(self, "dame de comer primero!")
//		}
//	}

//	method energiaParaVolar(distancia) = 15 + 5 * distancia

//	method energiaNecesariaParaVolarA(dir) {
//		return self.energiaParaVolar(position.distance(dir))
//	}



//	method move(nuevaPosicion) {
//		energia -= self.energiaNecesariaParaVolarA(nuevaPosicion)
//		self.position(nuevaPosicion)
//	}

//	method moverYComerManzana() {
//		self.move(manzana.position())
//		self.come(manzana)
//		game.removeVisual(manzana)
//	}
	
//	method moverYComerAlpiste() {
//		self.move(alpiste.position())
//		self.come(alpiste)
//		game.removeVisual(alpiste)
//	}
}

/** First Wollok example */
object loboFeroz{
	var peso=10
	
	method estaSaludable() {return peso.between(20, 150 )}
	
	method aumentePeso(unPeso){peso += unPeso}
	
	method disminuirPeso(unPeso){peso -= unPeso }
	
	method sufreCrisis() {peso= 10}
	
	//method 
	//method ComerPersonaje_(unPersonaje){
	//	peso = peso + unPersonaje.pesoActual()*0.1
	
	
	
	method comeAlgo(comida) {self.aumentePeso( comida.pesoActual()*0.1) }
	
	method correrHaciaUnLugar(){self.disminuirPeso(2)}
	
	method pesoActual() {return peso}	
	
	method conversarCon_(unPersonaje) {return "hola"+ unPersonaje + "no hare nada" }
	
	method solparUna_(unaCasa){
		self.disminuirPeso( unaCasa.resitencia() + unaCasa.pesoOcupantes())
	}
}

object abuela{
	const peso = 50
	method pesoActual(){ return peso}
}

object capelusita{
	var peso= 60 + canasta.pesoCanastaActual()
	
	method pierdeUnaManzana(){
	peso= peso - canasta.pesoCanastaActual()
	}
	method pesoCanasta(){ return canasta.pesoCanastaActual()}
	method pesoActual(){ return peso}
}

object canasta{
	var pesoCanasta= 6*0.2
	
	method pierdeUnaManzana(){
	pesoCanasta= pesoCanasta-0.2
	}
	
	method pesoCanastaActual(){return pesoCanasta }
	
	
}

object cazador {
	const peso=60
	
	method peso() {return peso}
	method generarCrisisALLobo(){loboFeroz.sufreCrisis()}
	
}
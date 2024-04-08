/** First Wollok example */
object loboFeroz{
	var peso=10
	
	method estaSaludable() {return peso.between(20, 150 )}
	
	method aumentePeso(cantidadPeso){peso += cantidadPeso }
	
	method disminuyaPeso(cantidadPeso){peso -= cantidadPeso }
	
	method sufreCrisis() {peso= 10}
	
	method ComerPersonaje_(unPersonaje){
		peso = peso + unPersonaje.pesoActual()*0.1
	
	}
	
	//method comeAlgo(cantidadPeso) {peso += 0.1* cantidadPeso }
	
	method corre(){peso-=1}
	
	method pesoActual() {return peso}	
	
	method conversarCon_(unPersonaje) {return ""}
	
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
	method pesoActual(){ return peso}
}

object canasta{
	var pesoCanasta= 6*0.2
	
	method pierdeUnaManzana(){
	pesoCanasta= pesoCanasta-0.2
	}
	
	method pesoCanastaActual(){return pesoCanasta }
	
	
}
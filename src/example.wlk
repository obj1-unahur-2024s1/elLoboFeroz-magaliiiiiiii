/** First Wollok example */
object loboFeroz{
	var peso=10
	
	method estaSaludable() {return peso.between(20, 150 )}
	
	method aumentePeso(unPeso){peso += unPeso}
	
	method disminuirPeso(unPeso){peso -= unPeso }
	
	method peso(unPeso){ peso= unPeso}
	
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

////////////////////////////////////// PARTE DE LOS CHANITOS

object chanchito{
	const peso = 20
	method peso(){return peso}
}
///////////////////Lugares
///// el bosque tiene un poder q invente yo porque estoy probando cosas /// 
object bosque{
	var energia =80
	
	method aumentarEnergia(unaEnergia){ energia+=unaEnergia}
	method aumentaEnergiaEn_(unaEnergia){
	  loboFeroz. peso(unaEnergia)
	}  
	
	method energia(){return energia}
}

object casaAbuela{}

object casaPaja{
	const resistencia = 0
	const ocupantes = 3
	method resistencia(){return resistencia}
	method pesoOcupantes(){return ocupantes*chanchito.peso()}
}

object casaMadera{
	const resistencia = 5
	const ocupantes = 2
	method resistencia(){return resistencia}
	method pesoOcupantes(){return ocupantes*chanchito.peso()}
}

object casaLadrillo{
	const ladrillos = 10
	const resistencia = 2*ladrillos
	const ocupantes = 1
	method resistencia(){return resistencia}
	method pesoOcupantes(){return ocupantes*chanchito.peso()}
}
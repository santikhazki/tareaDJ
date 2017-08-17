object berghain{
	//var patova = #{rochensen,rodrigsen,gushtavotruccensen}
	var listaDePersonas = #{}
	
	method agregarPersona(unaPersona){
		listaDePersonas.add(unaPersona)
		}
}	
	

object vonLukaz {
	
	var energia = 150
	var diversion = 70
	var edad = 17
	
	method colorDeRemera() {
		return "Blanca"
	}
	
	method energia(){
		return energia
	}
	
	method diversion(){
		return diversion
	} 
	
	method edad(){
		return edad
	}
	
	method modificarEnergia(unValor){
		energia += unValor
	}
	
	method modificarDiversion(unValor){
		diversion += unValor
	}
	
}
	
object bianker {
	
	var energia = 140
	var diversion = 80
	var edad = 22
	
	method colorDeRemera() {
		return "Negra"
	}
	
	method energia(){
		return energia
	}
	
	method diversion(){
		return diversion
	} 
	
	method edad(){
		return edad
	}
	
	method modificarEnergia(unValor){
		energia += unValor
	}
	
	method modificarDiversion(unValor){
		diversion += unValor
	}
}
	
object gonzen {
	
	var energia = 90
	var diversion = 15
	var edad = 33
	
	method colorDeRemera() {
		return "Blanca"
	}
	
	method energia(){
		return energia
	}
	
	method diversion(){
		return diversion
	} 
	
	method edad(){
		return edad
	}
	
	method modificarEnergia(unValor){
		energia += unValor
	}
	
	method modificarDiversion(unValor){
		diversion += unValor
	}
}

object rochensen{
	method dejaPasar(unaPersona){
	 return self.esMayor(unaPersona)
	}
	
	method esMayor(unaPersona){
		return unaPersona.edad() > 21
	}
	method permitirEntrarAlBoliche(unaPersona){
		if(self.dejaPasar(unaPersona)){
			berghain.agregarPersona(unaPersona) 
		}
	} 
}

object rodrigsen{
	method dejaPasar(unaPersona){
		return self.tieneRemeraNegra(unaPersona)
	}
	
	method tieneRemeraNegra(unaPersona){
		return unaPersona.colorDeRemera() == "Negra"
	}
	
	method permitirEntrarAlBoliche(unaPersona){
		if(self.dejaPasar(unaPersona)){
			berghain.agregarPersona(unaPersona) 
		
		}
	}
}

object gushtavotruccensen{
	method dejaPasar(unaPersona){
		return "hoy no es tu noche"
	}
	
	method permitirEntrarAlBoliche(unaPersona){
		if(self.dejaPasar(unaPersona)){
			berghain.agregarPersona(unaPersona) 
		
		}
	}
}

object mainRoom{
	var personasBailando = #{bianker,vonLukaz}
	
	method agregarPersona(unaPersona){
		personasBailando.add(unaPersona)
	}
	
	method hacerBailar(unaPersona){
		unaPersona.modificarEnergia(-40)
		unaPersona.modificarDiversion(30)
	}
	
	method hacerBailarUnaLista(){
		personasBailando.map({persona => persona.hacerBailar(persona)})
	}
}







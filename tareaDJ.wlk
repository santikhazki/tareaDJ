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
}

object rochensen{
	method dejaPasar(unaPersona){
		return self.esMayor(unaPersona)
	}
	
	method esMayor(unaPersona){
		return unaPersona.edad() > 21
	} 
}

object rodrigsen{
	method dejaPasar(unaPersona){
		return self.tieneRemeraNegra(unaPersona)
	}
	
	method tieneRemeraNegra(unaPersona){
		return unaPersona.colorDeRemera() == "Negra"
	}
}

object gushtavotruccensen{
	method dejaPasar(unaPersona){
		return false
	}
}

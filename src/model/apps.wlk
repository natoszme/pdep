object whatsapp{
	var conversacionesActuales = 0
		
	method conversacionesActuales(cantConversaciones) {
		conversacionesActuales = cantConversaciones
	}
		
	method ramOcupada(){
		return 40 + 5*conversacionesActuales
	}
	method bateriaPorMinuto()
	{
		return conversacionesActuales*1
	}
	
}

object reproductorMusica{
	var cantidadCanciones = 0
		
	method cantidadCanciones(cantidad)
	{
		cantidadCanciones = cantidad
	} 
	method ramOcupada(){
		return 50.min(cantidadCanciones*2)
	}
	method bateriaPorMinuto()
	{
		return 2
	}
	
}

object calculadora{
		

	method ramOcupada(){
		return 10
	}
	method bateriaPorMinuto()
	{
		return 0
	}
	
}

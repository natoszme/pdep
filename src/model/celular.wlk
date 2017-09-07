object s3Mini
{
	var ramOriginal = 1000
	var aplicaciones = #{}
	var bateria = 40 
	
	
	method ramLibre()
	{
		var ramOcupada = aplicaciones.sum({aplicacion => aplicacion.ramOcupada()}) 
		if (ramOcupada > 1000)
		{
			self.error("No se dispone de suficiente memoria para ejecutar todas las aplicaciones actuales")	
		}
		return 1000 - ramOcupada 
	}
	
	method usarPor(tiempo)
	{
		//excepcion  de bateria
		bateria -= aplicaciones.sum({aplicacion => aplicacion.bateriaPorMinuto()})
	}

}
object s3Mini
{
	var ramOriginal = 1000
	var aplicaciones = #{}
	var bateria = 40 
	
	
	method ramLibre()
	{
		//excepcion de ram 
		return 1000 - aplicaciones.sum({aplicacion => aplicacion.ramOcupada()}) 
	}
	
	method usarPor(tiempo)
	{
		//excepcion  de bateria
		bateria -= aplicaciones.sum({aplicacion => aplicacion.bateriaPorMinuto()})
	}

}
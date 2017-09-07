object s3Mini
{
	var ramOriginal = 1000
	var aplicaciones = #{}
	var bateria = 40 
	
	method ramLibre()
	{
		var ramOcupada = aplicaciones.sum({aplicacion => aplicacion.ramOcupada()}) 
		if (ramOcupada > ramOriginal)
		{
			self.error("No se dispone de suficiente memoria para ejecutar todas las aplicaciones")	
		}
		return ramOriginal - ramOcupada 
	}
	
	method usarPor(tiempo)
	{
		var bateriaUsada = aplicaciones.sum({aplicacion => aplicacion.bateriaPorMinuto()})
		if (bateriaUsada > bateria)
		{
			self.error("El telefono no tiene la batería suficiente")
		}
		bateria -= bateriaUsada
	}
	
	method bateria() = bateria
	
	method abrirApp(aplicacion)
	{
		aplicaciones.add(aplicacion)
	}
	method cantidadAppsAbiertas() {
		return aplicaciones.size() 
	}

}
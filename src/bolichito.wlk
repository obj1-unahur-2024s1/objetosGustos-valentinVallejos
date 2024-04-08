object bolichito {
	var vidriera = remera
	var mostrador = placa
	
	method esBrillante(){
		return ( vidriera.material().esBrillante() ) && ( mostrador.material().esBrillante() )
	}
	
	method esMonocromatico(){
	
	 return vidriera.color() == mostrador.color()
    }
    
    method estaDesequilibrado() {
    	return vidriera.peso() < mostrador.peso()
    }
    
    method tieneAlgoDeColor(color){
    	return (vidriera.color() == color)  || ( mostrador.color() == color)
    }
    
    method puedeMejorar(){
    	return self.esMonocromatico() || self.estaDesequilibrado()         
    }
    
    method puedeOfrecerleAlgoA(persona){
    	return persona.leGusta(vidriera) || persona.leGusta(mostrador) 
    }
}

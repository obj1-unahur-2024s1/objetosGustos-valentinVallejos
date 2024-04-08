                       //  COLORES
object rojo {
	method esFuerte(){
		return true
	}
}

object verde {
	method esFuerte(){
		return true
	}
}

object celeste {
	method esFuerte(){
		return false
	}
}

object pardo {
	method esFuerte(){
		return false
	}
}

object naranja {
	method esFuerte(){
		return true
	}
}

                          // MATERIALES	

object cobre {
	method esBrillante(){
		return true
	}
}

object vidrio {
	method esBrillante(){
		return true
	}
}

object lino {
	method esBrillante(){
		return false
	}
}

object madera {
	method esBrillante(){
		return false
	}
}

object cuero {
	method esBrillante(){
		return false
	}
}
                          //OBJETOS	
   
object remera {
	method color(){
		return rojo
	}
	method material(){
		return lino
	}
	method peso (){
		return 800
	}
}       

object pelota {
	method color(){
		return pardo
	}
	method material(){
		return cuero
	}
	method peso (){
		return 1300
	}
}

object biblioteca {
	method color(){
		return verde
	}
	method material(){
		return madera
	}
	method peso (){
		return 8000
	}
}

object munieco {
	var peso = 2000
	method color(){
		return celeste
	}
	method material(){
		return vidrio
	}
	method peso (){
		return peso
	}
	method cambiarPeso(nuevoPeso) {
		peso =  nuevoPeso
	}
}

object placa {
	var color = pardo
	var peso = 12000
	method color(){
		return color
	}
	method material(){
		return cobre
	}
	method peso (){
		return peso
	}
	
	method cambiaPeso(nuevoPeso){
		peso =  nuevoPeso
	}
	
	method cambiarColor(nuevoColor){
		color = nuevoColor
	}
	
}
	object banquito {
	var color = naranja
	method color(){
		return color
	}
	method material(){
		return madera
	}
	method peso (){
		return 1700
	}
	
	method cambiarColor(nuevoColor){
		color = nuevoColor
	}
	
}         

	object aritos {
	method color(){
		return celeste
	}
	method material(){
		return cobre
	}
	method peso (){
		return 180
	}	
}   

	object caja {
	var objetoDentro = remera
	method color(){
		return rojo
	}
	method material(){
		return cobre
	}
	method peso(){
		return 400 + objetoDentro.peso()
	}
	method cambiarObjeto(objeto){
		objetoDentro = objeto
	}
	
}

                             // personas


object rosa{
	method leGusta(objeto) {
		return  objeto.peso() > 2000
		
	}
}

object estefania {
	method leGusta(objeto) {
		return objeto.color().esFuerte()
	}
}

object luisa {
	method leGusta(objeto) {
		return objeto.material().esBrillante()
	}
}

object juan {
	method leGusta(objeto){
		return  (objeto.color().esFuerte()) && ( objeto.peso().betweeen(1200,1800) )  
	}
}

                             //BOLICHITO

                             
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
    
    method ponerEnLaVidriera(objeto){
    	vidriera = objeto
    }
     method ponerEnElMostrador(objeto){
    	mostrador = objeto
    }
}
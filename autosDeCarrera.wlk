import pilotosDeCarrera.*

object vortex {
  var nivelDeBateria = 100

  method añoDeFabricacion() = 1998

  method nivelExperienciaRequerida() = 5

  method puedeUsarse() = nivelDeBateria > 10
  method esUsadoPor(unPiloto){
    if(self.puedeUsarse() && unPiloto.puedeUsarlo(self)){
      nivelDeBateria = (nivelDeBateria - 30).max(0) //cada vez que se usa consume 30 de bateria, le pongo un max 0 para que no baje a carga negativa
      unPiloto.usarAuto(self)//el piloto usa el auto
    }
  }
  method experienciaQueOtorga(){2}

  method recargaDeBateria(unTiempo){
    nivelDeBateria = (nivelDeBateria + 40 * unTiempo).min(100)
  }
  
  } 
  


object nebula {
  var nivelDeBateria = 100
  var modoConduccion = inicial

  method añoDeFabricacion() = 2009

  method nivelExperienciaRequerida(){3}
  method puedeUsarse() = nivelDeBateria > 20
  method esUsadoPor(unPiloto) {
    if(self.puedeUsarse() && unPiloto.puedeUsarlo(self)){
      nivelDeBateria = (nivelDeBateria - modoConduccion.consumo()).max(0) //cada vez que se usa consume 30 de bateria, le pongo un max 0 para que no baje a carga negativa
      unPiloto.usarAuto(self)//el piloto usa el auto
    }
  }  
  method experienciaQueOtorga() { modoConduccion.experiencia()}
  method recargaDeBateria(unTiempo){
    nivelDeBateria = (nivelDeBateria + 30*unTiempo).min(100)
  }
  method cambiarModoConduccion(unModoConduccion){
    modoConduccion = unModoConduccion
  }
}

object inicial {
  method consumo() = 10
  method experiencia() = 0
}
object intermedio {
  method consumo() = 20
  method experiencia() = 2
}

object avanzado {
  method consumo() = 35
  method experiencia() = 5
}

object quantum {

  method añoDeFabricacion() = 2024

  method nivelExperienciaRequerida() = 0

  method puedeUsarse() = true

  method esUsadoPor(unPiloto) {
  unPiloto.usarAuto(self)
  }
  method experienciaQueOtorga() = 1
}

object autoNulo {

  method añoDeFabricacion() = 999999

  method nivelExperienciaRequerida() = 0

  method puedeUsarse() = true

  method esUsadoPor(unPiloto) {}
  method experienciaQueOtorga() = 0
}
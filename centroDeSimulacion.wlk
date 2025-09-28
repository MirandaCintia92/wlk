import pilotosDeCarrera.*
import autosDeCarrera.*


object centroDeSimulacion {
    const pilotos = []
    const autos = []

    method agregarPilotos(listaPilotos) {pilotos.addAll(listaPilotos)}
    method agregarAutos(listaDeAutos) {autos.addAll(listaDeAutos)}
    method autos() = autos
    method hacerEntrenamiento(unPiloto, unAuto){
        unAuto.esUsadoPor(unPiloto)
    }
    method probarTodosLosAutos(unPiloto) {
        autos.forEach({a => a.esUsadoPor(unPiloto)})
    }
    method promedioExperienciaPilotos() = pilotos.sum({p => p.experiencia()}) / pilotos.size()
    method pilotosConMayorExperiencia() = pilotos.max({p => p.experiencia()}) 
    method añosDeFabricacionDeLosAutos() = autos.map({a => a.añoDeFabricacion()})
    method autosQueNoEstanParaCorrer() = autos.filter({a => !a.puedeUsarse()}) 
    method todosLosAutosEstanParaCorrer() = autos.all({a => !a.puedeUsarse()}) //all para devolver booleano
    method unPilotoSeSienteRealizado(unPiloto) = unPiloto.estaFeliz(autos)
}

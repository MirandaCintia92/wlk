import autosDeCarrera.*


object kaelVarela {
        var experiencia = 3
    const autosConducidos = []
        var estaCansado = false
    
    method puedoUsarlo(unAuto) = unAuto.nivelExperienciaRequerida() <= self.experiencia() 
    method experiencia() = experiencia
    method experienciaRenovada() {
        experiencia += autosConducidos.sum({ a => a.experienciaQueOtorga()})
    }
    method usarAuto(unAuto) {
        if (self.puedoUsarlo(unAuto) && !estaCansado){
            estaCansado = true
            autosConducidos.add(unAuto)
        }
    
    }
    method dormir(){estaCansado = false}
    method estaFeliz(autos) = autos.asSet() == autosConducidos.asSet() // convierto la lista en un conjunto para asegurarme que no tengo repetidos 
}


object novaIshari {
        var experiencia = 5
        var ultimoAutoConducido = autoNulo
    
    
    method puedoUsarlo(unAuto) = unAuto.nivelExperienciaRequerida() <= self.experiencia()
    method experiencia() = experiencia
    method usarAuto(unAuto) {
        if (self.puedoUsarlo(unAuto)){
            ultimoAutoConducido = unAuto
            self.experienciaRenovada(unAuto)
        } 
    }
    method experienciaRenovada(unAuto){
        experiencia += unAuto.experienciaQueOtorga() 
    }
    method estaFeliz(autos) = ultimoAutoConducido.añoDeFabricacion() < 2000 
}


object axelDraven {
        var experiencia = 0
        var cantidadDeAutosConducidos = 0
    
    method puedoUsarlo(unAuto) = cantidadDeAutosConducidos <=  5 && unAuto.añoDeFabricacion() > 2000
    method experiencia() = experiencia
    method usarAuto(unAuto) {
        if (self.puedoUsarlo(unAuto)){
            cantidadDeAutosConducidos += 1
            self.experienciaRenovada(unAuto)
        } 
    }
    method experienciaRenovada(unAuto){
        experiencia += unAuto.experienciaQueOtorga() 
    }
    method estaFeliz(autos) = cantidadDeAutosConducidos >= 1
    method cantidadDeAutosConducidos() = cantidadDeAutosConducidos
}

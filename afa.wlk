
object partidoHomenaje {
   var dineroActual = 1000000
   var precioEntrada = 10000
   var estadio = bombonera
   method cambiarEstadio(nuevo){
      estadio = nuevo
   }
   var jugador = messi
   method cambiarJugador (otro) {
      jugador = otro
   }
   method precioEntrada() = precioEntrada + (precioEntrada*inflacion) / 100  
   method cantEntrada() {
      if (jugador.disponible()) {
      return estadio.capacidad() * jugador.popularidad() / 100
      }
      else {
         return 0
         }
   }
   method gastos() = estadio.alquiler() + jugador.viatico()
   method ingreso() = partidoHomenaje.precioEntrada() * partidoHomenaje.cantEntrada()
   method ganancia() = partidoHomenaje.ingreso() - partidoHomenaje.gastos()
   method realizarPartido(){
      dineroActual = dineroActual + partidoHomenaje.ganancia()
   } 
   var inflacion = 2
   method cambiarInflacion(nuevainflacion) {
      inflacion = nuevainflacion
   }
}
object messi {
    method viatico() = 9000
    var popularidad = 98
    method popularidad() {
    return popularidad
    }
    method opinar(opinion){
      if (opinion == "politica"){
         popularidad = popularidad - 10
      }
    }
   method disponible() = true

}

object ronaldo {
    method viatico() = 90000
    method popularidad() = messi.popularidad() / 2
    var disponible = true
    method Antartida(){
      disponible = false
    }
    method estadisponible() = true
}

object mbappe {
   var edad = 26
   method cumpleanios() {
      edad = edad + 1
   }
   var goles = 4
    method viatico() = 8000
    method popularidad() = edad * goles
    method disponible() = true
}

object bombonera {
    method capacidad() = 5400
    method alquiler() = 10000
}

object monumental {
   var obras = 20
   method avanzaobra(nuevo) {
      obras = nuevo
   }
   const capacidadNormal = 85018
    method capacidad() = ( capacidadNormal * obras ) / 100
    method alquiler() = 10000
}
object neymar {
    method viatico() = 12000
    method popularidad() = messi.popularidad()
    method disponible() = true
}
object libertadoresDeAmerica {
    method capacidad() = 42069
    method alquiler() = bombonera.alquiler() / 2
}
//casa de antiguedades

import antiguedades.*

object casaDeAntiguedades {
	const coleccionDeAntiguedades = []
	
	method restaurar(antiguedad) {
		antiguedad.restaurar()
	}
	
	method antiguedadDeLaUbicacion(ubicacion) {
		return coleccionDeAntiguedades.get(ubicacion)
	}
	
	method coleccionDeAntiguedadesActual() {
		return coleccionDeAntiguedades
	}
	
	method adquirirAntiguedad(antiguedad) {
		coleccionDeAntiguedades.add(antiguedad)
	}
	
	method adquirirLoteDeAntiguedades(nuevasAntiguedades) {
		coleccionDeAntiguedades.addAll(nuevasAntiguedades)
	}
	
	method hayAntiguedadEnStock() {
		return coleccionDeAntiguedades.any({a => a.estaEnStock()})
	}
	
	method cantidadDeAntiguedades() {
		return coleccionDeAntiguedades.size()
	}
	
	method ultimaAntiguedad() {
		return coleccionDeAntiguedades.last()
	}
	
	method esMuyAntigua(antiguedad) {
		return antiguedad.aniosDeAntiguedad() >= 100
	}
	
	method calcularAniosDeLaUbicacion(ubicacionDeAntiguedad) {
		return coleccionDeAntiguedades.get(ubicacionDeAntiguedad).aniosDeAntiguedad()
	}
	
	method venderTodo() {
		coleccionDeAntiguedades.clear()
	}
}

object pepe {
	var property categoria = cadete 
    var property bonoResultados = montoFijo 
    var property bonoPorPresentismo = bonoPresentismoNormal 
    var property cantidadDeFaltas = 0 

    method sueldo() = self.sueldoNeto() + self.bonoResultados() + self.bonoPorPresentismo() // muestra self

    method sueldoNeto() = categoria.neto()
    method bonoResultados() = bonoResultados.bono(self)
    method bonoPorPresentismo() = bonoPorPresentismo.bono(self)
}

object gerente{
    method neto() = 15000
}

object cadete {
    method neto() = 20000
}

object bonoPorcentaje {
    method bono(empleado) = empleado.sueldoNeto() * 0.10
}

object nulo{
    method bono(empleado) = 0
}

object montoFijo {
    method bono(empleado) = 800
}

object bonoPresentismoNormal {
    method bono(empleado){
        return 
        if (empleado.cantidadDeFaltas() == 0) {
            2000
        } else {
            if (empleado.cantidadDeFaltas() == 1){
                1000
            } else {
                nulo.bono(empleado)
            }
        }
    }
}

object bonoPresentismoAjuste {
    method bono(empleado){
        return
        if (empleado.cantidadDeFaltas() == 0){
            100
        } else {
            0
        }
    }
}

object bonoPresentismoDemagogico {
    method bono(empleado) {
        return 
        if (empleado.sueldoNeto() < 18000) {
            500
        } else {
            300
        }
    }
}

object bonoPresentismoNulo {
    method bono(empleado) = 0
}
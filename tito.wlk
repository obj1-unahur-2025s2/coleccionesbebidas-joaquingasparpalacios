object tito {
  var cantidad = 0
  var bebida = cianuro
  
  method peso() = 70
  
  method inerciaBase() = 490
  
  method consumir(unaCantidad, unaBebida) {
    bebida = unaBebida
    cantidad = unaCantidad
  }
  
  method bebida() = bebida
  
  method velocidad() = (bebida.rendimiento(
    cantidad
  ) * self.inerciaBase()) / self.peso()
}

object whisky {
  method rendimiento(cantidad) = 0.9 ** cantidad
}

object cianuro {
  method rendimiento(cantidad) = 0
}

object terere {
  method rendimiento(cantidad) = 1.max(cantidad * 0.1)
}

object licuado {
  const nutrientes = []
  
  method agregar(unIngrediente) {
    nutrientes.add(unIngrediente.nutrientes())
  }
  
  method rendimiento(cantidad) = (nutrientes.sum() * cantidad) / 1000
}

object aguaSaborizada {
  var saborizante = terere
  
  method agregarSaborizante(unSaborizante) {
    saborizante = unSaborizante
  }
  
  method rendimiento(cantidad) = 1 + saborizante.rendimiento(cantidad / 4)
}

object coctel {
  const compuestos = []

  method agregar(unCompuesto) {
    compuestos.add(unCompuesto)
  }
  method rendimiento(cantidad) = compuestos.sum(compuestos -> compuestos.rendimiento(cantidad / compuestos.size())) ** 2
}

object manzana {
  method nutrientes() = 4
}

object mandarina {
  method nutrientes() = 5
}
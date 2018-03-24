class Animal
	def initialize(nombre)
		@nombre = nombre
	end
end

class Cuidador
	def initialize(dni, nombre, sexo)
		@dni = dni
		@nombre = nombre
		@sexo = sexo
		@jaulas = jaula
	end

	def asignar_jaula(jaula)
		@jaula.push(jaula)
	end
end

class Jaula
	def initialize(codigo, descripcion)
		@codigo = codigo
		@descripcion = descripcion
		@animales = []
	end

	def agregar_animal(animal)
		@animales.push(animal)
	end
end

class Zona
	def initialize(nombre, codigo)
		@nombre = nombre
		@codigo = codigo
		@jaulas = jaulas
	end

	def agregar_jaula(jaula)
		@jaulas.push(jaula)
	end
end

class Zoologico
  def initialize(nombre, direccion)
  	@nombre = nombre
  	@direccion = direccion
  	@zonas = []
  	@cuidadores = []
  end

  def agregar_zona(zona)
  	@zonas.push(zona)
  end

  def agregar_cuidador(cuidador)
  	@cuidadores.push(cuidador)
  end
end

parque_leyendas = Zoologico.new("Parque De Las Leyendas", "Av San Miguel")

costa = Zona.new("Costa", "cos")
sierra = Zona.new("Sierra", "sie")
selva = Zona.new("Selva", "sel")

parque_leyendas.agregar_zona(costa)
parque_leyendas.agregar_zona(sierra)
parque_leyendas.agregar_zona(selva)

leopardo = Animal.new("Leopardo")
pantera = Animal.new("Pantera")
llama = Animal.new("Llama")
alpaca = Animal.new("Alpaca")
gaviota = Animal.new("Gaviota")

jaula1 = Jaula.new("jal1", "Aves de costa")
jaula1.agregar_animal(gaviota)

jaula2 = Jaula.new("jal2", "Animal depredador")
jaula2.agregar_animal(leopardo)
jaula3 = Jaula.new("jal3", "Animal depredador")
jaula3.agregar_animal(pantera)

jaula4 = Jaula.new("jal4", "Animales de sierra")
jaula4.agregar_animal(alpaca)
jaula4.agregar_animal(llama)

jaula5 = Jaula.new("jal5", "Animales acuaticos")

cuidador1 = Cuidador.new("44489173", "Mario", "masculino")
cuidador1.asignar_jaula(jaula1)
cuidador1.asignar_jaula(jaula4)

cuidador2 = Cuidador.new("44489170", "Jessica", "femenino")
cuidador2.asignar_jaula(jaula2)
cuidador2.asignar_jaula(jaula3)

cuidador3 = Cuidador.new("44489160", "Maria", "femenino")





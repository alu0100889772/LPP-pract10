require "Alimentos/version"

class PlatoEficienciaEnergetica < PlatoValorNutricional

	def initialize(nombre)
		super(nombre)
	end

	def to_s

		suma_gramos = 0
		cantidades.collect{|i| suma_gramos += i}

		result = "\n#{@nombre}:\n\n"
		
		
		@plato.collect{|i| result += i.to_s + "\n"}
		result += "Emisiones de gases de efecto invernadero diarias: #{emisionesEfectoInvDiarias}\nTerreno total utilizado: #{terrenoTotal}"

		result
	end

	def <=>(other)
		emisionesEfectoInvDiarias <=> other.emisionesEfectoInvDiarias
	end

end

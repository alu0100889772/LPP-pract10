# @author Alberto Delgado Soler

require "Alimentos/version"

class PlatoEficienciaEnergetica < PlatoValorNutricional

	def initialize(nombre)
		super(nombre)
	end

	# Converts the object into a string.
	#
	# @return [String] the object converted into the expected format.
	def to_s

		suma_gramos = 0
		cantidades.collect{|i| suma_gramos += i}

		result = "\n#{@nombre}:\n\n"
		
		
		@plato.collect{|i| result += i.to_s + "\n"}
		result += "Emisiones de gases de efecto invernadero diarias: #{emisionesEfectoInvDiarias}\nTerreno total utilizado: #{terrenoTotal}"

		result
	end

	# Implemented to be compatible with module Comparable, compares by emisionesEfectoInvDiarias.
	#
	# @param other [PlatoEficienciaEnergetica] the other PlatoEficienciaEnergetica to compare with.
	# @return [int] -1, 0 or 1 depending on the result of the comparision.
	def <=>(other)
		emisionesEfectoInvDiarias <=> other.emisionesEfectoInvDiarias
	end

end

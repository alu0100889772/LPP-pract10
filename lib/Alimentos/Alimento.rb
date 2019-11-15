require "Alimentos/version"


class Alimento
	attr_reader :nombre, :proteina

	def initialize(nombre)
		@nombre = nombre
	end
end

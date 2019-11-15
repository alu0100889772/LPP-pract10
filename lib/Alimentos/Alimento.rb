require "Alimentos/version"


class Alimento
	attr_reader :nombre, :proteina, :carb_hidr

	def initialize(nombre)
		@nombre = nombre
	end
end

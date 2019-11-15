require "Alimentos/version"


class Alimento
	attr_reader :nombre, :proteina, :carb_hidr, :lipido, :gei, :terreno

	def initialize(nombre)
		@nombre = nombre
	end
end

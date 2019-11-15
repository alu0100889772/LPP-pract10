require "Alimentos/version"


class Alimento
	attr_reader :nombre, :proteina, :carb_hidr, :lipido, :gei, :terreno

	def initialize(nombre, proteina, carb_hidr, lipido, gei, terreno)
		@nombre, @proteina, @carb_hidr, @lipido, @gei, @terreno = nombre, proteina, carb_hidr, lipido, gei, terreno
	end

	def to_s
		result = ""

		result += nombre + ":\n"
		result += "\tProteínas: " + proteina.to_s + "\n"
		result += "\tCarbohidratos: " + carb_hidr.to_s + "\n"
		result += "\tLípidos: " + lipido.to_s + "\n"
		result += "\tGEI: " + gei.to_s + "\n"
		result += "\tTerreno: " + terreno.to_s + "\n"

		result
	end
end

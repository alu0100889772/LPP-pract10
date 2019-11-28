require "Alimentos/version"


class Alimento

	include Comparable

	attr_reader :nombre, :proteina, :carb_hidr, :lipido, :gei, :terreno, :is_carne, :is_origen_animal

	def initialize(nombre, proteina, carb_hidr, lipido, gei, terreno, is_carne, is_origen_animal)
		@nombre, @proteina, @carb_hidr, @lipido, @gei, @terreno, @is_carne, @is_origen_animal = nombre, proteina, carb_hidr, lipido, gei, terreno, is_carne, is_origen_animal
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

	# Devuelve el valor energético del alimento
	def valor_energetico
		(proteina*4+carb_hidr*4+lipido*9).round(2)
	end

	def <=>(other)
		valor_energetico <=> other.valor_energetico
	end

end




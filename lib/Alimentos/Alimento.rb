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

	# Devuelve el valor energético del alimento
	def valor_energetico
		(proteina*4+carb_hidr*4+lipido*9).round(2)
	end
end


class Menu
	attr_accessor :menu

	def initialize()
		@menu = Node.new(nil,nil,nil)
	end
	
	def add(arrayAlimentos)
		if arrayAlimentos.is_a?(Array)
			for alimento in arrayAlimentos do
				if alimento.is_a?(Alimento)
					@menu.push_tail(alimento)
				end
			end
		end
	end
end

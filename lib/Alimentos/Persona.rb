require "Alimentos/version"
class Persona
	attr_reader :sexo, :comida_hoy, :impacto_ambiental_kcal, :impacto_ambiental_proteina, :comida_hoy

	# sexo 0: hombre, 1: mujer

	def initialize(sexo, desayuno, comida, cena)
		@impacto_ambiental_kcal = 0.0
		@impacto_ambiental_proteina = 0.0
		@comida_hoy = {}
		@sexo = sexo
		set_comida_hoy(desayuno, comida, cena)
	end

	def set_comida_hoy(desayuno, comida, cena)
		if(desayuno.is_a?(Array) && comida.is_a?(Array) && cena.is_a?(Array))
			@comida_hoy[:desayuno] = desayuno
			@comida_hoy[:comida] = comida
			@comida_hoy[:cena] = cena
		end
		impacto_ambiental_diario
	end

	def impacto_ambiental_diario
		@impacto_ambiental_kcal = 0.0
		@impacto_ambiental_proteina = 0.0

		@comida_hoy.each do |key, value| 
			if(value.is_a?(Array))
				value.each do |alimento|
					if(alimento.is_a?(Alimento))
						@impacto_ambiental_kcal += alimento.valor_energetico
						@impacto_ambiental_proteina += alimento.proteina
					end
				end
			end
		end
		puts @impacto_ambiental_kcal
		puts @impacto_ambiental_proteina	
	end

	def buen_impacto?
		resultado = false
		if(sexo==0 && @impacto_ambiental_kcal <= 3000 && @impacto_ambiental_proteina <= 54)
			resultado = true
		elsif(sexo==0 && @impacto_ambiental_kcal <= 2300 && @impacto_ambiental_proteina <= 41)
			resultado = true
		end
		
		resultado
	end
	
end

# @author Alberto Delgado Soler

require "Alimentos/version"
class Persona
	attr_reader :sexo, :comida_hoy, :impacto_ambiental_kcal, :impacto_ambiental_proteina

	# sexo 0: hombre, 1: mujer

	def initialize(sexo, desayuno, comida, cena)
		@impacto_ambiental_kcal = 0.0
		@impacto_ambiental_proteina = 0.0
		@comida_hoy = {}
		@sexo = sexo
		set_comida_hoy(desayuno, comida, cena)
	end

	# Modifica el desayuno, comida y cena que ha ingerido hoy mediante array de alimentos
	def set_comida_hoy(desayuno, comida, cena)
		if(desayuno.is_a?(Array) && comida.is_a?(Array) && cena.is_a?(Array))
			@comida_hoy[:desayuno] = desayuno
			@comida_hoy[:comida] = comida
			@comida_hoy[:cena] = cena
		end
		impacto_ambiental_diario
	end

	# Calcula el impacto ambiental diario en cuanto a el kilocalorico y el total de proteinas ingeridas
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
	end


	# Devuelve true si tiene un buen impacto y false si tiene un mal impacto
	def buen_impacto?
		resultado = false
		if(sexo==0 && @impacto_ambiental_kcal <= 3000 && @impacto_ambiental_proteina >= 54)
			resultado = true
		elsif(sexo==1 && @impacto_ambiental_kcal <= 2300 && @impacto_ambiental_proteina >= 41)
			resultado = true
		end
		
		resultado
	end
	
end

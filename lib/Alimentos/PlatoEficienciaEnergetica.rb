require "Alimentos/version"

class PlatoEficienciaEnergetica < PlatoValorNutricional

	def initialize(nombre)
		super(nombre)
	end

	def emisionesEfectoInvDiarias
		iterador = @plato.head
		emisionesEfectoInvDiarias = 0
		for i in (0..plato_size) do
			if(iterador!=nil)
				emisionesEfectoInvDiarias += iterador.value.gei
				iterador = iterador.next
			end
		end
		return emisionesEfectoInvDiarias.round(2)
	end

	def emisionesEfectoInvAnuales
		return (emisionesEfectoInvDiarias*365).round(2)
	end

	
	def terrenoTotal
		iterador = @plato.head
		terrenoTotal = 0
		for i in (0..plato_size) do
			if(iterador!=nil)
				terrenoTotal += iterador.value.terreno
				iterador = iterador.next
			end
		end
		return terrenoTotal.round(2)
	end

	def to_s

		suma_gramos = 0
		cantidades.collect{|i| suma_gramos += i}

		result = "\nplato de dieta española:\n\n"
		
		
		@plato.collect{|i| result += i.to_s + "\n"}
		result += "Emisiones de gases de efecto invernadero diarias: #{emisionesEfectoInvDiarias}\nTerreno total utilizado: #{terrenoTotal}"

		result
	end

end

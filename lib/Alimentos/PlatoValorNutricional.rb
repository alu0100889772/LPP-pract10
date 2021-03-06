# @author Alberto Delgado Soler

require "Alimentos/version"

class PlatoValorNutricional

	include Comparable

	attr_accessor :plato, :nombre, :cantidades

	def initialize(nombre)
		@nombre = nombre
		@plato = Lista.new
		@cantidades = Lista.new
	end
	
	# Receives an array of food that is then converted to a Lista that is saved in the object.
	#
	# @param arrayAlimentos [Array] must contain instances of Alimento.
	def add(arrayAlimentos)
		if arrayAlimentos.is_a?(Array)
			for alimento in arrayAlimentos do
				if alimento.is_a?(Alimento)
					@plato.push_tail(alimento)
					@cantidades.push_tail(alimento.proteina + alimento.carb_hidr + alimento.lipido)
				end
			end
		end
	end

	def plato_size
		return @plato.size
	end

	# Erase all food of PlatoValorNutricional
	def erase
		@plato = Lista.new
	end

	# Calculates the percentage of carb_hidr in the plate.
	#
	# @return [int] percentage of carb_hidr.
	def porcentajeCarboHidratos
		result = 0
		iterador = @plato.head
		total = 0.0
		carbohidratos = 0.0
		
		for i in (0..plato_size) do
			if(iterador!=nil)
				total += iterador.value.carb_hidr + iterador.value.lipido + iterador.value.proteina
				carbohidratos += iterador.value.carb_hidr

				iterador = iterador.next
			end
		end

		result = (carbohidratos/total)*100
		return result
	end

	# Calculates the percentage of lipido in the plate.
	#
	# @return [int] percentage of lipido.
	def porcentajeLipido
		result = 0
		iterador = @plato.head
		total = 0.0
		lipidos = 0.0
		
		for i in (0..plato_size) do
			if(iterador!=nil)
				total += iterador.value.carb_hidr + iterador.value.lipido + iterador.value.proteina
				lipidos += iterador.value.lipido

				iterador = iterador.next
			end
		end

		result = (lipidos/total)*100
		return result
	end

	# Calculates the percentage of proteina in the plate.
	#
	# @return [int] percentage of proteina.
	def porcentajeProteina
		result = 0
		iterador = @plato.head
		total = 0.0
		proteinas = 0.0
		
		for i in (0..plato_size) do
			if(iterador!=nil)
				total += iterador.value.carb_hidr + iterador.value.lipido + iterador.value.proteina
				proteinas += iterador.value.proteina

				iterador = iterador.next
			end
		end

		result = (proteinas/total)*100
		return result
	end

	# Checks if there is any meat in the plate.
	#
	# @return [boolean] true if there is any meat in the plate, false otherwise.
	def contieneCarne?
		iterador = @plato.head
		contieneCarne = false
		for i in (0..plato_size) do
			if(iterador!=nil)
				if(iterador.value.is_carne)
					contieneCarne = true
				end
				iterador = iterador.next
			end
		end
		return contieneCarne
	end

	# Checks if there is any food coming from animal in the plate.
	#
	# @return [boolean] true if there is any food coming from animal in the plate, false otherwise.
	def contieneProcedenciaAnimal?
		iterador = @plato.head
		contieneProcedenciaAnimal = false
		for i in (0..plato_size) do
			if(iterador!=nil)
				if(iterador.value.is_origen_animal)
					contieneProcedenciaAnimal = true
				end
				iterador = iterador.next
			end
		end
		return contieneProcedenciaAnimal
	end

	# Calculates total caloric value of the plate.
	#
	# @return [int] percentage of proteina.
	def valorCaloricoTotal
		result = 0
		plato.each{|i| result += i.valor_energetico}
		result
	end

	# Converts the object into a string.
	#
	# @return [String] the object converted into the expected format.
	def to_s

		suma_gramos = 0
		cantidades.collect{|i| suma_gramos += i}

		result = "\n#{@nombre}:\n\n"
		
		
		@plato.collect{|i| result += i.to_s + "\n"}
		result += "Gramos totales: #{suma_gramos}\nValor calorico total: #{valorCaloricoTotal}\nPorcentaje de proteinas: #{porcentajeProteina}\nPorcentaje de carbohidratos: #{porcentajeCarboHidratos}\nPorcentaje de lipidos: #{porcentajeLipido}"

		result
	end



	def <=>(other)
		valorCaloricoTotal <=> other.valorCaloricoTotal
	end

	# Calculates energy impact rating.
	#
	# @return [int] the rating from 1 to 3.
	def indice_impacto_energia
		energia = 2;
		if(valorCaloricoTotal < 670)
			energia = 1;
		elsif(valorCaloricoTotal > 830)
			energia = 3;
		end
		energia
	end

	# Calculates carbon footprint rating.
	#
	# @return [int] the rating from 1 to 3.
	def indice_impacto_huella_carbono
		huella = 2;
		if(emisionesEfectoInvDiarias < 800)
			huella = 1;
		elsif(emisionesEfectoInvDiarias > 1200)
			huella = 3;
		end
		huella
	end

	# Calculates nutritional footprint rating.
	#
	# @return [int] the rating from 1 to 3.
	def huella_nutricional
		
		return (indice_impacto_huella_carbono+indice_impacto_energia)/2.0;

	end

	# Calculates daily greenhouse emissions.
	#
	# @return [int] daily greenhouse emissions.
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

	# Calculates yearly greenhouse emissions.
	#
	# @return [int] yearly greenhouse emissions.
	def emisionesEfectoInvAnuales
		return (emisionesEfectoInvDiarias*365).round(2)
	end

	# Calculates total terrain.
	#
	# @return [int] total terrain.
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
end

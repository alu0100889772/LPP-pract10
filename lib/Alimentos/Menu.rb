require "Alimentos/version"

class Menu
	attr_accessor :menu

	def initialize()
		@menu = Lista.new
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

	def menu_size
		return @menu.size
	end

	def erase
		@menu = Lista.new
	end

	def porcentajeCarboHidratos
		result = 0
		iterador = @menu.head
		total = 0.0
		carbohidratos = 0.0
		
		for i in (0..menu_size) do
			if(iterador!=nil)
				total += iterador.value.carb_hidr + iterador.value.lipido + iterador.value.proteina
				carbohidratos += iterador.value.carb_hidr

				iterador = iterador.next
			end
		end

		result = (carbohidratos/total)*100
		return result
	end

	def porcentajeLipido
		result = 0
		iterador = @menu.head
		total = 0.0
		lipidos = 0.0
		
		for i in (0..menu_size) do
			if(iterador!=nil)
				total += iterador.value.carb_hidr + iterador.value.lipido + iterador.value.proteina
				lipidos += iterador.value.lipido

				iterador = iterador.next
			end
		end

		result = (lipidos/total)*100
		return result
	end

	def porcentajeProteina
		result = 0
		iterador = @menu.head
		total = 0.0
		proteinas = 0.0
		
		for i in (0..menu_size) do
			if(iterador!=nil)
				total += iterador.value.carb_hidr + iterador.value.lipido + iterador.value.proteina
				proteinas += iterador.value.proteina

				iterador = iterador.next
			end
		end

		result = (proteinas/total)*100
		return result
	end

	def contieneCarne?
		iterador = @menu.head
		contieneCarne = false
		for i in (0..menu_size) do
			if(iterador!=nil)
				if(iterador.value.is_carne)
					contieneCarne = true
				end
				iterador = iterador.next
			end
		end
		return contieneCarne
	end

	def contieneProcedenciaAnimal?
		iterador = @menu.head
		contieneProcedenciaAnimal = false
		for i in (0..menu_size) do
			if(iterador!=nil)
				if(iterador.value.is_origen_animal)
					contieneProcedenciaAnimal = true
				end
				iterador = iterador.next
			end
		end
		return contieneProcedenciaAnimal
	end

	
	def emisionesEfectoInvDiarias
		iterador = @menu.head
		emisionesEfectoInvDiarias = 0
		for i in (0..menu_size) do
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
		iterador = @menu.head
		terrenoTotal = 0
		for i in (0..menu_size) do
			if(iterador!=nil)
				terrenoTotal += iterador.value.terreno
				iterador = iterador.next
			end
		end
		return terrenoTotal.round(2)
	end

end

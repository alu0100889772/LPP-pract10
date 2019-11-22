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
		puts result
		return result
	end
end

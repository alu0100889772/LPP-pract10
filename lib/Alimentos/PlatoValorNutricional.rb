require "Alimentos/version"

class PlatoValorNutricional

	include Comparable

	attr_accessor :plato, :nombre, :cantidades

	def initialize(nombre)
		@nombre = nombre
		@plato = Lista.new
		@cantidades = Lista.new
	end
	
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

	def erase
		@plato = Lista.new
	end

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

	def valorCaloricoTotal
		result = 0
		plato.each{|i| result += i.valor_energetico}
		result
	end

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

	def indice_impacto_energia
		energia = 2;
		if(valorCaloricoTotal < 670)
			energia = 1;
		elsif(valorCaloricoTotal > 830)
			energia = 3;
		end
		energia
	end

	def indice_impacto_huella_carbono
		huella = 2;
		if(emisionesEfectoInvDiarias < 800)
			huella = 1;
		elsif(emisionesEfectoInvDiarias > 1200)
			huella = 3;
		end
		huella
	end

	def huella_nutricional
		
		return (indice_impacto_huella_carbono+indice_impacto_energia)/2.0;

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
end

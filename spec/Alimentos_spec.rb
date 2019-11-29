require "spec_helper"

RSpec.describe Alimentos do

	before :each do
		
		carne_de_vaca = 	{ nombre: "Carne de vaca", 	proteina: 21.1, carb_hidr: 0, 	lipido: 3.1, 	gei: 50, 	terreno: 164,	carne: true,	origen_animal: true}
		carne_de_cordero = 	{ nombre: "Carne de cordero", 	proteina: 18, 	carb_hidr: 0, 	lipido: 17, 	gei: 20, 	terreno: 185,	carne: true,	origen_animal: true}
		camarones = 		{ nombre: "Camarones", 		proteina: 17.6, carb_hidr: 1.5, lipido: 0.6, 	gei: 18, 	terreno: 2,	carne: true,	origen_animal: true}
		chocolate = 		{ nombre: "Chocolate", 		proteina: 5.3, 	carb_hidr: 47, 	lipido: 30, 	gei: 2.3, 	terreno: 3.4,	carne: false,	origen_animal: false}
		salmon = 		{ nombre: "Salmón", 		proteina: 19.9, carb_hidr: 0, 	lipido: 13.6, 	gei: 6, 	terreno: 3.7,	carne: true,	origen_animal: true}
		cerdo = 		{ nombre: "Cerdo", 		proteina: 21.5, carb_hidr: 0, 	lipido: 6.3, 	gei: 7.6, 	terreno: 11,	carne: true,	origen_animal: true}
		pollo = 		{ nombre: "Pollo", 		proteina: 20.6, carb_hidr: 0, 	lipido: 5.6, 	gei: 5.7, 	terreno: 7.1,	carne: true,	origen_animal: true}
		queso = 		{ nombre: "Queso", 		proteina: 25, 	carb_hidr: 1.3, lipido: 33, 	gei: 11, 	terreno: 41,	carne: false,	origen_animal: true}
		cerveza = 		{ nombre: "Cerveza", 		proteina: 0.5, 	carb_hidr: 3.6, lipido: 0, 	gei: 0.24, 	terreno: 0.22,	carne: false,	origen_animal: false}
		leche_de_vaca = 	{ nombre: "Leche de vaca", 	proteina: 3.3, 	carb_hidr: 4.8, lipido: 3.2, 	gei: 3.2, 	terreno: 8.9,	carne: false,	origen_animal: true}
		huevos = 		{ nombre: "Huevos", 		proteina: 13, 	carb_hidr: 1.1, lipido: 11, 	gei: 4.2, 	terreno: 5.7,	carne: false,	origen_animal: true}
		cafe = 			{ nombre: "Café", 		proteina: 0.1, 	carb_hidr: 0, 	lipido: 0, 	gei: 0.4, 	terreno: 0.3,	carne: false,	origen_animal: false}
		tofu = 			{ nombre: "Tofu", 		proteina: 8, 	carb_hidr: 1.9, lipido: 4.8, 	gei: 2, 	terreno: 2.2,	carne: false,	origen_animal: false}
		lentejas = 		{ nombre: "Lentejas", 		proteina: 23.5, carb_hidr: 52, 	lipido: 1.4, 	gei: 0.4, 	terreno: 3.4,	carne: false,	origen_animal: false}
		nuez = 			{ nombre: "Nuez", 		proteina: 20, 	carb_hidr: 21, 	lipido: 54, 	gei: 0.3, 	terreno: 7.9,	carne: false,	origen_animal: false}

		@carneVaca = Alimento.new(carne_de_vaca[:nombre],carne_de_vaca[:proteina],carne_de_vaca[:carb_hidr],carne_de_vaca[:lipido],carne_de_vaca[:gei],carne_de_vaca[:terreno],carne_de_vaca[:carne],carne_de_vaca[:origen_animal])
		@carneVacaAux = Alimento.new(carne_de_vaca[:nombre],carne_de_vaca[:proteina],carne_de_vaca[:carb_hidr],carne_de_vaca[:lipido],carne_de_vaca[:gei],carne_de_vaca[:terreno],carne_de_vaca[:carne],carne_de_vaca[:origen_animal])			
		@carneCordero = Alimento.new(carne_de_cordero[:nombre],carne_de_cordero[:proteina],carne_de_cordero[:carb_hidr],carne_de_cordero[:lipido],carne_de_cordero[:gei],carne_de_cordero[:terreno],carne_de_cordero[:carne],carne_de_cordero[:origen_animal])
		@camarones = Alimento.new(camarones[:nombre],camarones[:proteina],camarones[:carb_hidr],camarones[:lipido],camarones[:gei],camarones[:terreno],camarones[:carne],camarones[:origen_animal])
		@chocolate = Alimento.new(chocolate[:nombre],chocolate[:proteina],chocolate[:carb_hidr],chocolate[:lipido],chocolate[:gei],chocolate[:terreno],chocolate[:carne],chocolate[:origen_animal])
		@salmon = Alimento.new(salmon[:nombre],salmon[:proteina],salmon[:carb_hidr],salmon[:lipido],salmon[:gei],salmon[:terreno],salmon[:carne],salmon[:origen_animal])
		@cerdo = Alimento.new(cerdo[:nombre],cerdo[:proteina],cerdo[:carb_hidr],cerdo[:lipido],cerdo[:gei],cerdo[:terreno],cerdo[:carne],cerdo[:origen_animal])
		@pollo = Alimento.new(pollo[:nombre],pollo[:proteina],pollo[:carb_hidr],pollo[:lipido],pollo[:gei],pollo[:terreno],pollo[:carne],pollo[:origen_animal])
		@queso = Alimento.new(queso[:nombre],queso[:proteina],queso[:carb_hidr],queso[:lipido],queso[:gei],queso[:terreno],queso[:carne],queso[:origen_animal])
		@cerveza = Alimento.new(cerveza[:nombre],cerveza[:proteina],cerveza[:carb_hidr],cerveza[:lipido],cerveza[:gei],cerveza[:terreno],cerveza[:carne],cerveza[:origen_animal])
		@lecheVaca = Alimento.new(leche_de_vaca[:nombre],leche_de_vaca[:proteina],leche_de_vaca[:carb_hidr],leche_de_vaca[:lipido],leche_de_vaca[:gei],leche_de_vaca[:terreno],leche_de_vaca[:carne],leche_de_vaca[:origen_animal])
		@huevos = Alimento.new(huevos[:nombre],huevos[:proteina],huevos[:carb_hidr],huevos[:lipido],huevos[:gei],huevos[:terreno],huevos[:carne],huevos[:origen_animal])
		@cafe = Alimento.new(cafe[:nombre],cafe[:proteina],cafe[:carb_hidr],cafe[:lipido],cafe[:gei],cafe[:terreno],cafe[:carne],cafe[:origen_animal])
		@tofu = Alimento.new(tofu[:nombre],tofu[:proteina],tofu[:carb_hidr],tofu[:lipido],tofu[:gei],tofu[:terreno],tofu[:carne],tofu[:origen_animal])
		@lentejas = Alimento.new(lentejas[:nombre],lentejas[:proteina],lentejas[:carb_hidr],lentejas[:lipido],lentejas[:gei],lentejas[:terreno],lentejas[:carne],lentejas[:origen_animal])
		@nuez = Alimento.new(nuez[:nombre],nuez[:proteina],nuez[:carb_hidr],nuez[:lipido],nuez[:gei],nuez[:terreno],nuez[:carne],nuez[:origen_animal])
	
		@lista0 = Lista.new()
		@lista1 = Lista.new()
		@lista2 = Lista.new()

		@lista1.push_head(5)

		@lista2.push_head(4)
		@lista2.push_head(10)
		@lista2.push_head(6)
		@lista2.push_head(1)
		@lista2.push_head(20)

		@dietaTest = PlatoValorNutricional.new("test")

		@dietaEspanola = PlatoValorNutricional.new("plato de dieta española")
		@dietaEspanola.add([@carneCordero,@chocolate,@cafe])

		@dietaVasca = PlatoValorNutricional.new("plato de dieta vasca")
		@dietaVasca.add([@lentejas,@chocolate,@chocolate,@tofu])

		@dietaVegetaria = PlatoValorNutricional.new("plato de dieta vegetaria")
		@dietaVegetaria.add([@chocolate,@tofu,@tofu,@tofu])

		@dietaVegetaliana = PlatoValorNutricional.new("plato de dieta vegetaliana")
		@dietaVegetaliana.add([@tofu,@chocolate])


		@dietaEspanolaEficienciaEnergetica = PlatoEficienciaEnergetica.new("plato de dieta española")
		@dietaEspanolaEficienciaEnergetica.add([@carneCordero,@chocolate,@cafe])

		@dietaVascaEficienciaEnergetica = PlatoEficienciaEnergetica.new("plato de dieta vasca")
		@dietaVascaEficienciaEnergetica.add([@lentejas,@chocolate,@chocolate,@tofu])

		@dietaVegetariaEficienciaEnergetica = PlatoEficienciaEnergetica.new("plato de dieta vegetaria")
		@dietaVegetariaEficienciaEnergetica.add([@chocolate,@tofu,@tofu,@tofu])

		@dietaVegetalianaEficienciaEnergetica = PlatoEficienciaEnergetica.new("plato de dieta vegetaliana")
		@dietaVegetalianaEficienciaEnergetica.add([@tofu,@chocolate])
	end

	it "has a version number" do
		expect(Alimentos::VERSION).not_to be nil
	end

	it "does something useful" do
		expect(false).to eq(false)
	end

	describe Alimento do

		it "existe el nombre" do
			expect(@carneVaca.respond_to?(:nombre)).to be true
		end

		it "existe la proteina" do
			expect(@carneVaca.respond_to?(:proteina)).to be true
		end 

		it "existe el carbo hidrato" do
			expect(@carneVaca.respond_to?(:carb_hidr)).to be true
		end 

		it "existe el lipido" do
			expect(@carneVaca.respond_to?(:lipido)).to be true
		end 

		it "existe el gei" do
			expect(@carneVaca.respond_to?(:gei)).to be true
		end 

		it "existe el terreno" do
			expect(@carneVaca.respond_to?(:terreno)).to be true
		end 

		it "existe el método para acceder al nombre" do
			expect(@carneVaca.nombre).to eq("Carne de vaca")
		end

		it "existe el método para acceder a la proteina" do
			expect(@carneVaca.proteina).to eq(21.1)
		end

		it "existe el método para acceder al carbo hidrato" do
			expect(@carneVaca.carb_hidr).to eq(0)
		end

		it "existe el método para acceder al lipido" do
			expect(@carneVaca.lipido).to eq(3.1)
		end

		it "existe el método para acceder al gei" do
			expect(@carneVaca.gei).to eq(50)
		end

		it "existe el método para acceder al terreno" do
			expect(@carneVaca.terreno).to eq(164)
		end

		it "existe un método para obtener el alimento formateado" do
			alimento_formateado = "#{@carneVaca.nombre}:\n\tProteínas: #{@carneVaca.proteina}\n\tCarbohidratos: #{@carneVaca.carb_hidr}\n\tLípidos: #{@carneVaca.lipido}\n\tGEI: #{@carneVaca.gei}\n\tTerreno: #{@carneVaca.terreno}\n"

			expect(@carneVaca.to_s).to eq(alimento_formateado)
		end

		it "calcula el valor energético del alimento" do
			expect(@carneVaca.valor_energetico).to eq(112.3)
			expect(@carneCordero.valor_energetico).to eq(225)
			expect(@camarones.valor_energetico).to eq(81.8)
			expect(@chocolate.valor_energetico).to eq(479.2)
			expect(@salmon.valor_energetico).to eq(202)
		end

		it "compara si un alimento es igual a otro" do
			
			expect(@carneVaca == @carneVacaAux).to be true
			expect(@carneVaca == @cafe).to be false

		end

		it "compara si un alimento es diferente a otro" do
			
			expect(@carneVaca != @carneVacaAux).to be false
			expect(@carneVaca != @cafe).to be true

		end

		it "compara si un alimento es menor a otro" do
			
			expect(@carneVaca < @carneVacaAux).to be false
			expect(@carneVaca < @cafe).to be false
			expect(@carneVaca < @chocolate).to be true

		end

		it "compara si un alimento es menor/igual a otro" do
			
			expect(@carneVaca <= @carneVacaAux).to be true
			expect(@carneVaca <= @cafe).to be false
			expect(@carneVaca <= @chocolate).to be true

		end

		it "compara si un alimento es mayor a otro" do
			
			expect(@carneVaca > @carneVacaAux).to be false
			expect(@carneVaca > @cafe).to be true
			expect(@carneVaca > @chocolate).to be false

		end

		it "compara si un alimento es mayor/igual a otro" do
			
			expect(@carneVaca >= @carneVacaAux).to be true
			expect(@carneVaca >= @cafe).to be true
			expect(@carneVaca >= @chocolate).to be false

		end

		it "comprueba si un alimento se encuentra entre 2 alimentos" do
			expect(@carneVaca.between?(@cafe,@chocolate)).to be true
			expect(@cafe.between?(@carneVaca,@chocolate)).to be false
			expect(@chocolate.between?(@cafe,@carneVaca)).to be false
		end

		it "comprueba si restringe un alimento para que no sea menor que uno ni mayor que otro" do
			expect(@carneVaca.clamp(@cafe,@chocolate)).to eq(@carneVaca)
			expect(@chocolate.clamp(@cafe,@carneVaca)).to eq(@carneVaca)
			expect(@cafe.clamp(@carneVaca,@chocolate)).to eq(@carneVaca)
		end

	end

	describe Persona do

		it "calcula correctamente el impacto ambiental de un hombre" do
			@hombre1 = Persona.new(0,[@cafe, @camarones],[@cafe, @salmon],[@queso, @cafe])
			@hombre2 = Persona.new(0,[@carneVaca, @camarones, @chocolate],[@carneCordero, @chocolate, @salmon],[@queso, @lecheVaca, @chocolate, @chocolate])

			expect(@hombre1.buen_impacto?).to be true
			expect(@hombre2.buen_impacto?).to be false
		end

		it "calcula correctamente el impacto ambiental de una mujer" do
			@mujer1 = Persona.new(1,[@cafe],[@cafe, @chocolate],[@queso, @camarones])
			@mujer2 = Persona.new(1,[@cafe, @chocolate],[@chocolate, @salmon],[@chocolate, @chocolate, @chocolate])

			expect(@mujer1.buen_impacto?).to be true
			expect(@mujer2.buen_impacto?).to be false
		end

	end	

	describe Lista do

		it "crea una lista" do
			expect(@lista1.class).to eq(Lista)
		end

		it "la lista tiene head" do
			expect(@lista0.get_head).to eq(nil)
			expect(@lista1.get_head).to eq(5)
		end

		it "la lista tiene tail" do
			expect(@lista0.get_tail).to eq(nil)
			expect(@lista1.get_tail).to eq(5)
		end

		it "se puede insertar por la cabeza" do
			@lista0.push_head(1)
			expect(@lista0.get_head).to eq(1)
			@lista1.push_head(1)
			expect(@lista1.get_head).to eq(1)
		end

		it "se puede insertar por la cola" do
			@lista0.push_tail(1)
			expect(@lista0.get_tail).to eq(1)
			@lista1.push_tail(1)
			expect(@lista1.get_tail).to eq(1)
		end

		it "se puede extraer por la cabeza" do
			@lista0.pop_head
			expect(@lista0.get_head).to eq(nil)

			@lista1.pop_head
			expect(@lista1.get_head).to eq(nil)

			@lista1.push_head(2)
			@lista1.push_head(3)
			@lista1.pop_head
			expect(@lista1.get_head).to eq(2)
		end

		it "se puede extraer por la cola" do
			@lista0.pop_tail
			expect(@lista0.get_tail).to eq(nil)

			@lista1.pop_tail
			expect(@lista1.get_tail).to eq(nil)

			@lista1.push_tail(2)
			@lista1.push_tail(3)
			@lista1.pop_tail
			expect(@lista1.get_tail).to eq(2)
		end

		it "Comprobando el metodo del collect" do

			expect(@lista2.collect{|i| i}).to eq([20,1,6,10,4])

     		end

     		it "Comprobando el metodo select" do

			expect(@lista2.select{|i| i < 10}).to eq([1,6,4])

     		end

     		it "comprobando el metodo max " do

			expect(@lista2.max).to eq(20)

     		end

     		it "Comprobando el metodo min" do

			expect(@lista2.min).to eq(1)

     		end

     		it "Comprobando el metodo sort" do

			expect(@lista2.sort{ |a,b| a<=>b}).to eq([1,4,6,10,20])

     		end

	end

	describe PlatoValorNutricional do

		it "crea Plato" do
			expect(@dietaEspanola.class).to eq(PlatoValorNutricional)
		end

		it "añade alimentos al plato" do
			@dietaTest.add([@carneVaca,@camarones,@cafe])
			expect(@dietaTest.plato_size).to eq(3)
		end

		it "la dieta española tiene los porcentajes indicados de carbohidratos" do
			expect(@dietaEspanola.porcentajeCarboHidratos).to be_between(35, 45)
		end

		it "la dieta española tiene los porcentajes indicados de grasas" do
			expect(@dietaEspanola.porcentajeLipido).to be_between(35, 45)
		end

		it "la dieta española tiene los porcentajes indicados de proteinas" do
			expect(@dietaEspanola.porcentajeProteina).to be_between(15, 25)
		end

		it "la dieta vasca tiene los porcentajes indicados de carbohidratos" do
			expect(@dietaVasca.porcentajeCarboHidratos).to be_between(55, 65)
		end

		it "la dieta vasca tiene los porcentajes indicados de grasas" do
			expect(@dietaVasca.porcentajeLipido).to be_between(20, 30)
		end

		it "la dieta vasca tiene los porcentajes indicados de proteinas" do
			expect(@dietaVasca.porcentajeProteina).to be_between(10, 20)
		end

		it "la dieta vegetaria no contiene carne" do
			expect(@dietaVegetaria.contieneCarne?).to be false
		end

		it "la dieta vegetaria tiene los porcentajes indicados de carbohidratos" do
			expect(@dietaVegetaria.porcentajeCarboHidratos).to be_between(35, 45)
		end

		it "la dieta vegetaria tiene los porcentajes indicados de grasas" do
			expect(@dietaVegetaria.porcentajeLipido).to be_between(35, 45)
		end

		it "la dieta vegetaria tiene los porcentajes indicados de proteinas" do
			expect(@dietaVegetaria.porcentajeProteina).to be_between(15, 25)
		end

		it "la dieta vegetaliana no contiene alimentos procedentes de animales" do
			expect(@dietaVegetaliana.contieneProcedenciaAnimal?).to be false
		end

		it "se tiene el nombre del plato" do
			nombrePlato = "Plato casero"
			platoCasero = PlatoValorNutricional.new(nombrePlato)
			expect(platoCasero.nombre).to eq(nombrePlato)
		end

		it "existe un conjunto de cantidades de alimentos en gramos" do
			expect(@dietaEspanola.cantidades.collect{|i| i}).to eq([35,82.3,0.1])
		end

		it "existe el valor calorico total del plao" do
			expect(@dietaEspanola.valorCaloricoTotal).to eq(704.6)
		end

		it "se obtiene el plato formateado" do
			suma_gramos = 0
			@dietaEspanola.cantidades.collect{|i| suma_gramos += i}

			plato_formateado = "\nplato de dieta española:\n\n#{@carneCordero.nombre}:\n\tProteínas: #{@carneCordero.proteina}\n\tCarbohidratos: #{@carneCordero.carb_hidr}\n\tLípidos: #{@carneCordero.lipido}\n\tGEI: #{@carneCordero.gei}\n\tTerreno: #{@carneCordero.terreno}\n\n#{@chocolate.nombre}:\n\tProteínas: #{@chocolate.proteina}\n\tCarbohidratos: #{@chocolate.carb_hidr}\n\tLípidos: #{@chocolate.lipido}\n\tGEI: #{@chocolate.gei}\n\tTerreno: #{@chocolate.terreno}\n\n#{@cafe.nombre}:\n\tProteínas: #{@cafe.proteina}\n\tCarbohidratos: #{@cafe.carb_hidr}\n\tLípidos: #{@cafe.lipido}\n\tGEI: #{@cafe.gei}\n\tTerreno: #{@cafe.terreno}\n\nGramos totales: #{suma_gramos}\nValor calorico total: #{@dietaEspanola.valorCaloricoTotal}\nPorcentaje de proteinas: #{@dietaEspanola.porcentajeProteina}\nPorcentaje de carbohidratos: #{@dietaEspanola.porcentajeCarboHidratos}\nPorcentaje de lipidos: #{@dietaEspanola.porcentajeLipido}"

			expect(@dietaEspanola.to_s).to eq(plato_formateado)
		end

	end

	describe PlatoEficienciaEnergetica do
		it "su padre es PlatoValorNutricional" do
			expect(PlatoEficienciaEnergetica.superclass.name).to eq("PlatoValorNutricional")
		end

		it "calcula las emisiones diarias de efecto invernadero de un plato" do
			expect(@dietaEspanolaEficienciaEnergetica.emisionesEfectoInvDiarias).to eq(22.7)
			expect(@dietaVascaEficienciaEnergetica.emisionesEfectoInvDiarias).to eq(7)
			expect(@dietaVegetariaEficienciaEnergetica.emisionesEfectoInvDiarias).to eq(8.3)
		end

		it "calcula las emisiones anuales de efecto invernadero de un plato" do
			expect(@dietaEspanolaEficienciaEnergetica.emisionesEfectoInvAnuales).to eq(8285.5)
			expect(@dietaVascaEficienciaEnergetica.emisionesEfectoInvAnuales).to eq(2555.0)
			expect(@dietaVegetariaEficienciaEnergetica.emisionesEfectoInvAnuales).to eq(3029.5)
		end

		it "calcula los metros cuadrados de uso de un plato" do
			expect(@dietaEspanolaEficienciaEnergetica.terrenoTotal).to eq(188.7)
			expect(@dietaVascaEficienciaEnergetica.terrenoTotal).to eq(12.4)
			expect(@dietaVegetariaEficienciaEnergetica.terrenoTotal).to eq(10)
		end

		it "se obtiene el plato formateado" do
			plato_formateado = "\nplato de dieta española:\n\n#{@carneCordero.nombre}:\n\tProteínas: #{@carneCordero.proteina}\n\tCarbohidratos: #{@carneCordero.carb_hidr}\n\tLípidos: #{@carneCordero.lipido}\n\tGEI: #{@carneCordero.gei}\n\tTerreno: #{@carneCordero.terreno}\n\n#{@chocolate.nombre}:\n\tProteínas: #{@chocolate.proteina}\n\tCarbohidratos: #{@chocolate.carb_hidr}\n\tLípidos: #{@chocolate.lipido}\n\tGEI: #{@chocolate.gei}\n\tTerreno: #{@chocolate.terreno}\n\n#{@cafe.nombre}:\n\tProteínas: #{@cafe.proteina}\n\tCarbohidratos: #{@cafe.carb_hidr}\n\tLípidos: #{@cafe.lipido}\n\tGEI: #{@cafe.gei}\n\tTerreno: #{@cafe.terreno}\n\nEmisiones de gases de efecto invernadero diarias: #{@dietaEspanolaEficienciaEnergetica.emisionesEfectoInvDiarias}\nTerreno total utilizado: #{@dietaEspanolaEficienciaEnergetica.terrenoTotal}"

			expect(@dietaEspanolaEficienciaEnergetica.to_s).to eq(plato_formateado)
		end

		it "el plato de eficiencia energetica pertenece a la clase PlatoEficienciaEnergetica" do
			expect(@dietaEspanolaEficienciaEnergetica.is_a?(PlatoEficienciaEnergetica)).to be true
		end
	end
end

require "spec_helper"

RSpec.describe Alimentos do

	before :each do
		
		carne_de_vaca = 	{ nombre: "Carne de vaca", 	proteina: 21.1, carb_hidr: 0, 	lipido: 3.1, 	gei: 50, 	terreno: 164 }
		carne_de_cordero = 	{ nombre: "Carne de cordero", 	proteina: 18, 	carb_hidr: 0, 	lipido: 17, 	gei: 20, 	terreno: 185 }
		camarones = 		{ nombre: "Camarones", 		proteina: 17.6, carb_hidr: 1.5, lipido: 0.6, 	gei: 18, 	terreno: 2 }
		chocolate = 		{ nombre: "Chocolate", 		proteina: 5.3, 	carb_hidr: 47, 	lipido: 30, 	gei: 2.3, 	terreno: 3.4 }
		salmon = 		{ nombre: "Salmón", 		proteina: 19.9, carb_hidr: 0, 	lipido: 13.6, 	gei: 6, 	terreno: 3.7 }
		cerdo = 		{ nombre: "Cerdo", 		proteina: 21.5, carb_hidr: 0, 	lipido: 6.3, 	gei: 7.6, 	terreno: 11 }
		pollo = 		{ nombre: "Pollo", 		proteina: 20.6, carb_hidr: 0, 	lipido: 5.6, 	gei: 5.7, 	terreno: 7.1 }
		queso = 		{ nombre: "Queso", 		proteina: 25, 	carb_hidr: 1.3, lipido: 33, 	gei: 11, 	terreno: 41 }
		cerveza = 		{ nombre: "Cerveza", 		proteina: 0.5, 	carb_hidr: 3.6, lipido: 0, 	gei: 0.24, 	terreno: 0.22 }
		leche_de_vaca = 	{ nombre: "Leche de vaca", 	proteina: 3.3, 	carb_hidr: 4.8, lipido: 3.2, 	gei: 3.2, 	terreno: 8.9 }
		huevos = 		{ nombre: "Huevos", 		proteina: 13, 	carb_hidr: 1.1, lipido: 11, 	gei: 4.2, 	terreno: 5.7 }
		cafe = 			{ nombre: "Café", 		proteina: 0.1, 	carb_hidr: 0, 	lipido: 0, 	gei: 0.4, 	terreno: 0.3 }
		tofu = 			{ nombre: "Tofu", 		proteina: 8, 	carb_hidr: 1.9, lipido: 4.8, 	gei: 2, 	terreno: 2.2 }
		lentejas = 		{ nombre: "Lentejas", 		proteina: 23.5, carb_hidr: 52, 	lipido: 1.4, 	gei: 0.4, 	terreno: 3.4 }
		nuez = 			{ nombre: "Nuez", 		proteina: 20, 	carb_hidr: 21, 	lipido: 54, 	gei: 0.3, 	terreno: 7.9 }

		@alimento1 = Alimento.new(carne_de_vaca[:nombre],carne_de_vaca[:proteina],carne_de_vaca[:carb_hidr],carne_de_vaca[:lipido],carne_de_vaca[:gei],carne_de_vaca[:terreno])
		@alimento2 = Alimento.new(carne_de_cordero[:nombre],carne_de_cordero[:proteina],carne_de_cordero[:carb_hidr],carne_de_cordero[:lipido],carne_de_cordero[:gei],carne_de_cordero[:terreno])
		@alimento3 = Alimento.new(camarones[:nombre],camarones[:proteina],camarones[:carb_hidr],camarones[:lipido],camarones[:gei],camarones[:terreno])
		@alimento4 = Alimento.new(chocolate[:nombre],chocolate[:proteina],chocolate[:carb_hidr],chocolate[:lipido],chocolate[:gei],chocolate[:terreno])
		@alimento5 = Alimento.new(salmon[:nombre],salmon[:proteina],salmon[:carb_hidr],salmon[:lipido],salmon[:gei],salmon[:terreno])
		@alimento6 = Alimento.new(cerdo[:nombre],cerdo[:proteina],cerdo[:carb_hidr],cerdo[:lipido],cerdo[:gei],cerdo[:terreno])
		@alimento7 = Alimento.new(pollo[:nombre],pollo[:proteina],pollo[:carb_hidr],pollo[:lipido],pollo[:gei],pollo[:terreno])
		@alimento8 = Alimento.new(queso[:nombre],queso[:proteina],queso[:carb_hidr],queso[:lipido],queso[:gei],queso[:terreno])
		@alimento9 = Alimento.new(cerveza[:nombre],cerveza[:proteina],cerveza[:carb_hidr],cerveza[:lipido],cerveza[:gei],cerveza[:terreno])
		@alimento10 = Alimento.new(leche_de_vaca[:nombre],leche_de_vaca[:proteina],leche_de_vaca[:carb_hidr],leche_de_vaca[:lipido],leche_de_vaca[:gei],leche_de_vaca[:terreno])
		@alimento11 = Alimento.new(huevos[:nombre],huevos[:proteina],huevos[:carb_hidr],huevos[:lipido],huevos[:gei],huevos[:terreno])
		@alimento12 = Alimento.new(cafe[:nombre],cafe[:proteina],cafe[:carb_hidr],cafe[:lipido],cafe[:gei],cafe[:terreno])
		@alimento13 = Alimento.new(tofu[:nombre],tofu[:proteina],tofu[:carb_hidr],tofu[:lipido],tofu[:gei],tofu[:terreno])
		@alimento14 = Alimento.new(lentejas[:nombre],lentejas[:proteina],lentejas[:carb_hidr],lentejas[:lipido],lentejas[:gei],lentejas[:terreno])
		@alimento15 = Alimento.new(nuez[:nombre],nuez[:proteina],nuez[:carb_hidr],nuez[:lipido],nuez[:gei],nuez[:terreno])
	
		

	end

	it "has a version number" do
		expect(Alimentos::VERSION).not_to be nil
	end

	it "does something useful" do
		expect(false).to eq(false)
	end

	it "existe el nombre" do
		expect(@alimento1.respond_to?(:nombre)).to be true
	end

	it "existe la proteina" do
		expect(@alimento1.respond_to?(:proteina)).to be true
	end 

	it "existe el carbo hidrato" do
		expect(@alimento1.respond_to?(:carb_hidr)).to be true
	end 

	it "existe el lipido" do
		expect(@alimento1.respond_to?(:lipido)).to be true
	end 

	it "existe el gei" do
		expect(@alimento1.respond_to?(:gei)).to be true
	end 

	it "existe el terreno" do
		expect(@alimento1.respond_to?(:terreno)).to be true
	end 

	it "existe el método para acceder al nombre" do
		expect(@alimento1.nombre).to eq("Carne de vaca")
	end

	it "existe el método para acceder a la proteina" do
		expect(@alimento1.proteina).to eq(21.1)
	end

	it "existe el método para acceder al carbo hidrato" do
		expect(@alimento1.carb_hidr).to eq(0)
	end

	it "existe el método para acceder al lipido" do
		expect(@alimento1.lipido).to eq(3.1)
	end

	it "existe el método para acceder al gei" do
		expect(@alimento1.gei).to eq(50)
	end

	it "existe el método para acceder al terreno" do
		expect(@alimento1.terreno).to eq(164)
	end

	it "existe un método para obtener el alimento formateado" do
		alimento_formateado = "#{@alimento1.nombre}:\n\tProteínas: #{@alimento1.proteina}\n\tCarbohidratos: #{@alimento1.carb_hidr}\n\tLípidos: #{@alimento1.lipido}\n\tGEI: #{@alimento1.gei}\n\tTerreno: #{@alimento1.terreno}\n"

		expect(@alimento1.to_s).to eq(alimento_formateado)
	end

	it "calcula el valor energético del alimento" do
		expect(@alimento1.valor_energetico).to eq(112.3)
		expect(@alimento2.valor_energetico).to eq(225)
		expect(@alimento3.valor_energetico).to eq(81.8)
		expect(@alimento4.valor_energetico).to eq(479.2)
		expect(@alimento5.valor_energetico).to eq(202)
	end

	it "calcula correctamente el impacto ambiental de un hombre" do
		@hombre1 = Persona.new(0,[@alimento12, @alimento4],[@alimento12, @alimento5],[@alimento8, @alimento12])
		@hombre2 = Persona.new(0,[@alimento1, @alimento3, @alimento4],[@alimento2, @alimento4, @alimento5],[@alimento8, @alimento10])

		expect(@hombre1.buen_impacto?).to be true
		expect(@hombre2.buen_impacto?).to be false
	end


end

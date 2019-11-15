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

		@alimento1 = Alimento.new(carne_de_vaca[:nombre])
		@alimento2 = Alimento.new(carne_de_cordero[:nombre])
		@alimento3 = Alimento.new(camarones[:nombre])
		@alimento4 = Alimento.new(chocolate[:nombre])
		@alimento5 = Alimento.new(salmon[:nombre])
		@alimento6 = Alimento.new(cerdo[:nombre])
		@alimento7 = Alimento.new(pollo[:nombre])
		@alimento8 = Alimento.new(queso[:nombre])
		@alimento9 = Alimento.new(cerveza[:nombre])
		@alimento10 = Alimento.new(leche_de_vaca[:nombre])
		@alimento11 = Alimento.new(huevos[:nombre])
		@alimento12 = Alimento.new(cafe[:nombre])
		@alimento13 = Alimento.new(tofu[:nombre])
		@alimento14 = Alimento.new(lentejas[:nombre])
		@alimento15 = Alimento.new(nuez[:nombre])
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
end 

require "spec_helper"

RSpec.describe Alimentos do
	
	before :each do
		@lista0 = Node.new(nil,nil,nil)
		@lista1 = Node.new(5,nil,nil)

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

		@carneVaca = Alimento.new(carne_de_vaca[:nombre],carne_de_vaca[:proteina],carne_de_vaca[:carb_hidr],carne_de_vaca[:lipido],carne_de_vaca[:gei],carne_de_vaca[:terreno])
		@carneCordero = Alimento.new(carne_de_cordero[:nombre],carne_de_cordero[:proteina],carne_de_cordero[:carb_hidr],carne_de_cordero[:lipido],carne_de_cordero[:gei],carne_de_cordero[:terreno])
		@camarones = Alimento.new(camarones[:nombre],camarones[:proteina],camarones[:carb_hidr],camarones[:lipido],camarones[:gei],camarones[:terreno])
		@chocolate = Alimento.new(chocolate[:nombre],chocolate[:proteina],chocolate[:carb_hidr],chocolate[:lipido],chocolate[:gei],chocolate[:terreno])
		@salmon = Alimento.new(salmon[:nombre],salmon[:proteina],salmon[:carb_hidr],salmon[:lipido],salmon[:gei],salmon[:terreno])
		@cerdo = Alimento.new(cerdo[:nombre],cerdo[:proteina],cerdo[:carb_hidr],cerdo[:lipido],cerdo[:gei],cerdo[:terreno])
		@pollo = Alimento.new(pollo[:nombre],pollo[:proteina],pollo[:carb_hidr],pollo[:lipido],pollo[:gei],pollo[:terreno])
		@queso = Alimento.new(queso[:nombre],queso[:proteina],queso[:carb_hidr],queso[:lipido],queso[:gei],queso[:terreno])
		@cerveza = Alimento.new(cerveza[:nombre],cerveza[:proteina],cerveza[:carb_hidr],cerveza[:lipido],cerveza[:gei],cerveza[:terreno])
		@lecheVaca = Alimento.new(leche_de_vaca[:nombre],leche_de_vaca[:proteina],leche_de_vaca[:carb_hidr],leche_de_vaca[:lipido],leche_de_vaca[:gei],leche_de_vaca[:terreno])
		@huevos = Alimento.new(huevos[:nombre],huevos[:proteina],huevos[:carb_hidr],huevos[:lipido],huevos[:gei],huevos[:terreno])
		@cafe = Alimento.new(cafe[:nombre],cafe[:proteina],cafe[:carb_hidr],cafe[:lipido],cafe[:gei],cafe[:terreno])
		@tofu = Alimento.new(tofu[:nombre],tofu[:proteina],tofu[:carb_hidr],tofu[:lipido],tofu[:gei],tofu[:terreno])
		@lentejas = Alimento.new(lentejas[:nombre],lentejas[:proteina],lentejas[:carb_hidr],lentejas[:lipido],lentejas[:gei],lentejas[:terreno])
		@nuez = Alimento.new(nuez[:nombre],nuez[:proteina],nuez[:carb_hidr],nuez[:lipido],nuez[:gei],nuez[:terreno])

		
	end

	it "does something useful" do
		expect(false).to eq(false)
	end

	it "crea una lista" do
		expect(@lista1.class).to eq(Node)
	end

	it "la lista tiene head" do
		expect(@lista0.get_head.value).to eq(nil)
		expect(@lista1.get_head.value).to eq(5)
	end

	it "la lista tiene tail" do
		expect(@lista0.get_tail.value).to eq(nil)
		expect(@lista1.get_tail.value).to eq(5)
	end

	it "se puede insertar por la cabeza" do
		@lista0.push_head(1)
		expect(@lista0.get_head.value).to eq(1)
		@lista1.push_head(1)
		expect(@lista1.get_head.value).to eq(1)
	end

	it "se puede insertar por la cola" do
		@lista0.push_tail(1)
		expect(@lista0.get_tail.value).to eq(1)
		@lista1.push_tail(1)
		expect(@lista1.get_tail.value).to eq(1)
	end

	it "se puede extraer por la cabeza" do
		@lista0.pop_head
		expect(@lista0.get_head.value).to eq(nil)

		@lista1.pop_head
		expect(@lista1.get_head.value).to eq(nil)

		@lista1.push_head(2)
		@lista1.push_head(3)
		@lista1.pop_head
		expect(@lista1.get_head.value).to eq(2)
	end

	it "se puede extraer por la cola" do
		@lista0.pop_tail
		expect(@lista0.get_tail.value).to eq(nil)

		@lista1.pop_tail
		expect(@lista1.get_tail.value).to eq(nil)

		@lista1.push_tail(2)
		@lista1.push_tail(3)
		@lista1.pop_tail
		expect(@lista1.get_tail.value).to eq(2)
	end


	it "crea Menu" do
		@dietaEspanola = Menu.new()
		expect(@dietaEspanola.class).to eq(Menu)
	end

end

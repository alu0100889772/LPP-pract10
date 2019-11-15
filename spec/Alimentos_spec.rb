require "spec_helper"

RSpec.describe Alimentos do

	before :each do
		@alimento1 = Alimento.new("Carne de vaca")
	end

	it "has a version number" do
		expect(Alimentos::VERSION).not_to be nil
	end

	it "does something useful" do
		expect(false).to eq(false)
	end

	it "guarda el nombre" do
		expect(@alimento1.nombre).to eq("Carne de vaca")
	end
end 

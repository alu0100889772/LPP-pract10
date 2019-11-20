require "spec_helper"

RSpec.describe Alimentos do
	
	before :each do
		@lista0 = Node.new(nil,nil,nil)
		@lista1 = Node.new(5,nil,nil)
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

	it "la lista tiene head" do
		expect(@lista0.get_tail.value).to eq(nil)
		expect(@lista1.get_tail.value).to eq(5)
	end

	it "se puede insertar por la cabeza" do
		@lista1.push_head(1)
		expect(@lista1.get_head.value).to eq(1)
		@lista1.push_head(1)
		expect(@lista1.get_head.value).to eq(1)
	end
end

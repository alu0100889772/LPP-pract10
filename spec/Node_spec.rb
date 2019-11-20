require "spec_helper"

RSpec.describe Alimentos do
	
	before :each do
		@lista1 = Node.new(5,nil,nil)
	end

	it "does something useful" do
		expect(false).to eq(false)
	end

	it "crea una lista" do
		expect(@lista1.class).to eq(Node)
	end

	it "la lista tiene head" do
		expect(@lista1.get_head.value).to eq(5)
	end
end

require "spec_helper"

RSpec.describe Alimentos do
	
	before :each do
		test1 = Node.new(5,nil,nil)
	end

	it "does something useful" do
		expect(false).to eq(false)
	end

	it "crea una lista" do
		expect(test1.class).to eq(Node)
	end

	it "la lista tiene head" do
		expect(test1.head).to eq(5)
	end
end

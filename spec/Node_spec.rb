require "spec_helper"

RSpec.describe Alimentos do
	
	before :each do

	end

	it "does something useful" do
		expect(false).to eq(false)
	end

	it "crea una lista" do
		test1 = Node.new(nil,nil,nil)
		expect(test1.class).to eq(Node)
	end

	it "la lista tiene head" do
		
	end
end

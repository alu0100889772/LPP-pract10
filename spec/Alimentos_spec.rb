require "spec_helper"

RSpec.describe Alimentos do
  it "has a version number" do
    expect(Alimentos::VERSION).not_to be nil
  end

  it "does something useful" do
    alimento = Alimento.new
  end
end

require "spec_helper"

RSpec.describe Ein do
  it "Debe tener un constructor" do
    expect(@etiqueta = EIN.new(8.400,70,20,260,90,50,6)).not_to be nil
  end

 
end

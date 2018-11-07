require "spec_helper"

RSpec.describe Ein do
  
  
  describe EIN do
    etiqueta = EIN.new(8.400,70,20,260,90,50,6)
 
      context "Etiqueta_informacion_n" do
  
        it "Debe existir un nombre para la etiqueta" do
          expect("Galleta").to eq(etiqueta.nombre)
        end
  

      end
  
    end
 
end

require "spec_helper"

RSpec.describe Ein do
  
  
  describe EIN do
    etiqueta = EIN.new("Galleta",70.0,20.0,260.0,90.0,50.0,6.0,20, 5)
 
      context "Etiqueta_informacion_n" do
  
        it "Debe existir un nombre para la etiqueta" do
          expect("Galleta").to eq(etiqueta.nombre)
        end
        
        it "Debe existir la cantidad de grasas" do
          
          expect(70).to eq(etiqueta.grasa_t)
        end
        
        it "Debe existir la cantidad de grasas saturadas" do
          
          expect(20).to eq(etiqueta.grasa_s)
        end
        
        it "Debe existir la cantidad de hidratos de carbono" do
        
          expect(260).to eq(etiqueta.hidratos_c)
        end
        
        it "Debe existir la cantidad de azúcares" do
        
          expect(90).to eq(etiqueta.azucares)
        end
        
        it "Debe existir la cantidad de proteínas" do
        
          expect(50).to eq(etiqueta.proteinas)
        end
        
        it "Debe existir la cantidad de sal" do
        
          expect(6).to eq(etiqueta.sal)
        end
        
        it "Debe existir un método para obtener el valor energético (Kj)" do 
        
          expect(8010.0).to eq(etiqueta.valor_e_kj)
        end
        
        it "Debe existir un método para obtener el valor energético (Kcal)" do 
          expect(1906.0).to eq(etiqueta.valor_e_kc) 
        end
        
        it "Debe exisitir un método para obtener las porciones" do
        
          expect(5).to eq(etiqueta.porciones)
        end
        
       # it "Debe exisistir un método que muestre la información de la etiqueta" do
        
        #    etiqueta.info
        #end
  

      end
  
    end
    
  describe Node do
    
    nodo = Node.new(0, nil, nil)
    
    context "Lista doblemente enlazanda - nodo" do
      
      it "Debe existir un valor" do
      
        expect(0).to eq(nodo.value)
      end
      
      it "Debe existir un next" do
        expect(nil).to eq(nodo.next)
      end
      
      it "Debe existir un prev" do
        expect(nil).to eq(nodo.prev)
      end
      
  end
  
 
end


  describe Lista do
    
    lista = Lista.new()
    
    context "Lista doblemente enlazada -lista" do
    
      it "Debe existir un head" do
    
        expect(nil).to eq(lista.head)
      end
      
      it "Debe existir un tail" do
        expect(nil).to eq(lista.tail)
        
      end
      
      it "Debe existir un método para insertar head" do
      
        lista.set_head(2)
        expect(2).to eq(lista.head.value)
      end
      
      it "Debe existir un método para insertar tail" do
      
        lista.set_tail(3)
        expect(3).to eq(lista.tail.value)
      end
      
      it "Debe existir un método para extraer el head" do
        
        expect(2).to eq(lista.get_head.value)
      end
      
      it "Debe existir un método para extraer el tail" do
        
        lista.set_head(2)
        expect(3).to eq(lista.get_tail.value)
      end
    end
  end
    

end


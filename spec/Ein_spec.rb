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
         it "Prueba del método para clasificar la sal" do
            expect("Nivel de sal normal").to eq(etiqueta.clasificar_sal)
          end
  

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
      
      it "Debe existir un método para comprobar si la lista está vacía" do
        
        lista.get_tail
        expect(true).to eq(lista.empty?)
        
      end
      
      it "Método para clasificar la sal de todos los elementos de una lista" do
      
      
      etiqueta_1 = EIN.new("Galleta",70.0,20.0,260.0,90.0,50.0,6.0,20, 5)
        etiqueta_2 = EIN.new("Papas",70.0,20.0,260.0,90.0,50.0,20.0,20, 5)
        etiqueta_3 = EIN.new("Manzana",70.0,20.0,260.0,90.0,50.0,3.0,20, 5)
        etiqueta_4 = EIN.new("Atún",70.0,20.0,260.0,90.0,50.0,17.0,20, 5)
        etiqueta_5 = EIN.new("Chocolate",70.0,20.0,260.0,90.0,50.0,4.0,20, 5)
        
        lista.set_head(etiqueta_1)
        lista.set_head(etiqueta_2)
        lista.set_head(etiqueta_3)
        lista.set_head(etiqueta_4)
        lista.set_head(etiqueta_5)
        
        lista.clasificar_lista_sal
        expect(true).to eq(lista.clasificar_lista_sal)
      end
      
    
      
      
    end
  end
    
    describe Individuo do
    
      individuo = Individuo.new("Ana", 35)
      
      context "Pruebas de la clase Individuo" do
      
      
        it "Debe existir un nombre" do
        
          expect("Ana").to eq(individuo.nombre)
        end
        
        it "Debe exisistir una edad" do
        
          expect(35).to eq(individuo.edad)
        end
        
        it "individuo es una instancia de la clase Individuo" do
          
          expect(individuo.instance_of?Individuo).to eq(true)
        end
      end
    
    end
    
    describe Paciente do
    
      paciente = Paciente.new("Ana", 35, 95, 1.50, "Mujer")
      
      context "Pruebas de la clase Paciente" do
      
        it "paciente es una instancia de la clase Paciente" do
        
          expect(paciente.instance_of?Paciente).to eq(true)
        
        end
        
        it "Debe tener un peso" do
        
          expect(95).to eq(paciente.peso)
        
        end
        
        it "Debe tener una talla" do
        
          expect(1.50).to eq(paciente.talla)
        end
        
        it "Debe tener un sexo" do
        
          expect("Mujer").to eq(paciente.sexo)
        end
        
        it "Debe tener un método para calcular el imc" do
        
          expect(42.22).to eq(paciente.calcular_imc)
        
        end
        
        it "Debe tener un método para clasificar el imc" do
        
          expect("Obesidad grado 3 -- Obesidad").to eq(paciente.clasificar_imc)
        end
        
        it "paciente es de la clase Paciente" do
        
          expect(paciente.class == Paciente).to eq(true)
        end
        
        it "Paciente es una clase hija de Individuo" do
        
          expect(paciente.is_a?Individuo).to eq(true)
        end
        
        
        
      
      end
    
    end

end


require "spec_helper"

RSpec.describe Ein do
  
  
  describe EIN do
    etiqueta = EIN.new("Galleta",70.0,20.0,260.0,90.0,50.0,6.0,20, 5)
    etiqueta_1 = EIN.new("Papas", 50.0, 10.0, 200.0, 80.0, 30.0, 4.0, 10, 3) 
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
      
      context "Pruebas de instancias comparables"
      
        
        it "Prueba del >" do
        
          expect(etiqueta > etiqueta_1).to eq(true)
        end
        
        it "Prueba del <" do
        
          expect(etiqueta_1 < etiqueta).to eq(true)
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
        
        it "individuo es de la clase Individuo" do
        
          expect(individuo.class == Individuo).to eq(true)
        end
        
        it "individuo es una clase hija de Object" do
        
          expect(individuo.is_a?Object).to eq(true)
        
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
      
      context "Prueba de la clasificación de pacientes" do
      
      lista_p = Lista.new()
      lista_ps = Lista.new()
      lista_pc = Lista.new()
      
      paciente_1 = Paciente.new("Ana", 35, 95, 1.50, "Mujer") #obesidad 3
      paciente_2 = Paciente.new("Pedro", 57, 70, 1.70, "Hombre" ) #adecuado
      paciente_3 = Paciente.new("Maria", 28, 65, 1.57, "Mujer") #sobrepeso
      paciente_4 = Paciente.new("Gabriela", 21, 45, 1.63, "Mujer") #delgado
      paciente_5 = Paciente.new("Tomás", 45, 130, 1.87, "Hombre") #obesidad 2
      paciente_6 = Paciente.new("Julia", 51, 85, 1.65, "Mujer") #obesidad 1
      
      lista_p.set_head(paciente_1)
      lista_p.set_head(paciente_2)
      lista_p.set_head(paciente_3)
      lista_p.set_head(paciente_4)
      lista_p.set_head(paciente_5)
      lista_p.set_head(paciente_6)
      
      
      while(lista_p.empty? != true) do
        
        aux = lista_p.get_tail.value
        aux2 = aux.calcular_imc
        
        if(aux2 < 30)
          lista_ps.set_head(aux)
        else
          lista_pc.set_head(aux)
        end
        
      end
      
      
      it "Prueba de la clasificación de los pacientes" do
      aux = lista_ps.head
      expect("Bajo peso -- Delgado").to eq(aux.value.clasificar_imc)
      aux = aux.next
      expect("Sobrepeso -- Sobrepeso").to eq(aux.value.clasificar_imc)
      aux = aux.next
      expect("Adecuado -- Aceptable").to eq(aux.value.clasificar_imc)
      
      aux2 = lista_pc.head
      
      expect("Obesidad grado 1 -- Obesidad").to eq(aux2.value.clasificar_imc)
      aux2 = aux2.next
      expect("Obesidad grado 2 -- Obesidad").to eq(aux2.value.clasificar_imc)
      aux2 = aux2.next
      expect("Obesidad grado 3 -- Obesidad").to eq(aux2.value.clasificar_imc)
      
      
        
       end
       
       it "Prueba del to_s" do
       
        puts "\n\n"
        puts "Listado de pacientes sin tratamiento \n"
        while(lista_ps.empty? != true)

          aux = lista_ps.get_tail.value
          aux.to_s
        end
        
        puts "\n\n"
        puts "Listado de pacientes con tratamiento \n"
        while(lista_pc.empty?!=true)
         
          aux2 = lista_pc.get_tail.value
          aux2.to_s
        end
       end
      
      
      
      
      
      
      
      end
    
    end
    

end





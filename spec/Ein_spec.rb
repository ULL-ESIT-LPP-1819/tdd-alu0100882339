require "spec_helper"

RSpec.describe Ein do
  
  
  describe EIN do
    etiqueta = EIN.new("Galleta",70.0,20.0,260.0,90.0,50.0,6.0,20, 5)
    etiqueta_1 = EIN.new("Papas", 50.0, 10.0, 200.0, 80.0, 30.0, 4.0, 10, 3)
    etiqueta_2 =  EIN.new("Chocolte",70.0,20.0,260.0,90.0,50.0,6.0,20, 5)
    
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
      
      context "Pruebas de instancias comparables EIN" do
      
        
        it "Prueba del >" do
        
          expect(etiqueta > etiqueta_1).to eq(true)
        end
        
        it "Prueba del <" do
        
          expect(etiqueta_1 < etiqueta).to eq(true)
        end
        
        it "Prueba del  ==" do
        
          expect(etiqueta == etiqueta_2).to eq(true)
        end
        
        it "Prueba del >=" do
        
          expect(etiqueta_2 >= etiqueta_1 ).to eq(true)
        
        end
        
        it "Prueba del <=" do
        
          expect(etiqueta_1 <= etiqueta_2).to eq(true)
        
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
  
  describe Lista do
  
    
  context "Pruebas de enumerable - lista" do

    
      
      before :each do
        @lista_2 = Lista.new()
        @etiqueta_1 = EIN.new("Galleta",70.0,20.0,260.0,90.0,50.0,6.0,20, 5)
        @etiqueta_2 = EIN.new("Papas",80.0,20.0,260.0,90.0,50.0,0.0,20, 5)
        #etiqueta_3 = EIN.new("Chocolate",80.0,20.0,260.0,90.0,50.0,0.0,20, 5)
        @lista_2.set_head(@etiqueta_1)
        @lista_2.set_head(@etiqueta_2)
      end
       
      
      it "Prueba de collect" do
        
        
         expect(@lista_2.collect{|i| i.to_s}).to eq(["Papas", "Galleta"])
      end
      
      it "Prueba del select" do
      
        
         expect(@lista_2.select{|i| i.nombre.size < 6}).to eq([@etiqueta_2])
         #puts @lista_2.select{|i| i.nombre.size < 6}
         #puts @etiqueta_2.nombre.size 
        
      
      end
      
      it "Prueba del max" do
      
        expect(@lista_2.max).to eq(@etiqueta_2)
        #puts lista_2.max
      
      end
      
      it "Prueba del min" do
      
        expect(@lista_2.min).to eq(@etiqueta_1)
      end
      
      it "Prueba del sort" do
      
        expect(@lista_2.sort).to eq([@etiqueta_1,@etiqueta_2])
      
      end
    
    
    end 
    
    context "Listas de individuos" do
    
      before :each do
      
        @lista_i = Lista.new()
        @individuo = Individuo.new("Ana", 35)
        @individuo_2 = Individuo.new("Pedro", 40)
        @individuo_3 = Individuo.new("Luis", 35)
        @lista_i.set_head(@individuo)
        @lista_i.set_head(@individuo_2)
        @lista_i.set_head(@individuo_3)
        
      end
      
      it "Prueba de collect" do
      
         expect(@lista_i.collect{|i| i.to_s}).to eq(["Luis","Pedro","Ana"])
      
      end
      
      
      it "Prueba del select" do
      
        expect(@lista_i.select{|i| i.nombre.size > 3}).to eq([@individuo_3,@individuo_2])
        
      end
      
      it "Prueba del max" do
      
        expect(@lista_i.max).to eq(@individuo_2)
      
      end
      
      
      
    
    
    end 
  
  
  
  end
  
  
  
    
    describe Individuo do
    
      individuo = Individuo.new("Ana", 35)
      individuo_2 = Individuo.new("Pedro", 40)
      individuo_3 = Individuo.new("Luis", 35)
      
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
      
      context "Pruebas de comparables individio" do
  
        it "Prueba del >" do
        
          expect(individuo_2 > individuo).to eq(true) 
          
        end
        
        it "Prueba del <" do
          
          expect(individuo < individuo_2).to eq(true)
        end
        
        it "Prueba del ==" do
        
          expect(individuo == individuo_3).to eq(true)
        end
        
        it "Prueba del <=" do
        
          expect(individuo <= individuo_3).to eq(true)
        end
        
        it "Prueba del >=" do
        
          expect(individuo_2 >= individuo).to eq(true)
          
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
         it "Debe terner un peso teórico ideal" do
         
          expect(paciente.peso_teorico_ideal).to eq(50)
         end
         
         it "Debe tener un gasto energético basal" do
         
          expect(paciente.gasto_e_basal).to eq(1551.5)
         end
         
         it "Debe tener un efecto termógeno" do
         
          expect(paciente.efecto_t).to eq(155.15)
         end
        
          it "Gasto de actividad física" do
          
           expect(paciente.gasto_a_fisica("Reposo")).to eq(0.0)
          end
          
          it "Gasto energético total" do
          
            expect(paciente.gasto_e_total("Reposo")).to eq(1706.65)
          end

        
      end
      
      context "Pruebas de los menús" do
      
        before :all do
        
            @etiqueta_1 = EIN.new("Galleta",5.0,2.0,26.0,9.0,5.0,1.0,2, 5)
            @etiqueta_2 = EIN.new("Papas",7.0,3.0,16.0,8.0,10.0,2.0,1, 5)
            @etiqueta_3 = EIN.new("Manzana",4.0,1.0,30.0,6.0,24.0,3.0,10, 5)
            @etiqueta_4 = EIN.new("Atún",33.0,9.0,150.0,56.0,12.0,7.0,12, 5)
            @etiqueta_5 = EIN.new("Chocolate",55.0,13.0,200.0,80.0,50.0,4.0,20, 5)
            
            @menu1 = [@etiqueta_1, @etiqueta_2]
            @menu2 = [@etiqueta_3, @etiqueta_4]
            @menu3 = [@etiqueta_5, @etiqueta_1]
            @menu4 = [@etiqueta_2, @etiqueta_3]
            @menu5 = [@etiqueta_4, @etiqueta_5]
            @menu6 = [@etiqueta_1, @etiqueta_4]
            @menu7 = [@etiqueta_2, @etiqueta_5]
            @menu8 = [@etiqueta_1, @etiqueta_3]
            @menu9 = [@etiqueta_3, @etiqueta_5]
            @menu10 = [@etiqueta_4, @etiqueta_2]
            
            @menus = [@menu1,@menu2,@menu3,@menu4,@menu5,@menu6,@menu7,@menu8,@menu9,@menu10]
            @gasto_total = paciente.gasto_e_total("Reposo")
            
            @paciente_1 = Paciente.new("Ana", 35, 95, 1.50, "Mujer")
            @paciente_2 = Paciente.new("Pedro", 50, 100, 2.00, "Hombre")
            @paciente_3 = Paciente.new("Maria", 20, 95, 1.70, "Mujer")
            @paciente_4 = Paciente.new("Miguel", 60, 80, 1.60, "Hombre")
            @paciente_5 = Paciente.new("Julia", 44, 50, 1.60, "Mujer")
            @paciente_6 = Paciente.new("Gabriel", 38, 70, 1.85, "Hombre")
            @paciente_7 = Paciente.new("Carmen", 50, 85, 1.45, "Mujer")
            @paciente_8 = Paciente.new("Juan", 29, 78, 1.76, "Hombre")
            @paciente_9 = Paciente.new("Sofia", 25, 93, 1.60, "Mujer")
            @paciente_10 = Paciente.new("Adrian", 15, 85, 1.60, "Hombre")
            
            @pacientes = Lista.new()
            @pacientes.set_head(@paciente_1)
            @pacientes.set_head(@paciente_2)
            @pacientes.set_head(@paciente_3)
            @pacientes.set_head(@paciente_4)
            @pacientes.set_head(@paciente_5)
            @pacientes.set_head(@paciente_6)
            @pacientes.set_head(@paciente_7)
            @pacientes.set_head(@paciente_8)
            @pacientes.set_head(@paciente_9)
            @pacientes.set_head(@paciente_10)
            
            @head1 = @pacientes.head
            
            
        end
      
      
        it "Prueba menú 1" do
        
          
           expect( @menu1.collect{|i| i.valor_e_kc}.reduce(:+)).to be < @gasto_total
        
        
        end
        
        it "Prueba menú2" do
        
            
            
            expect( @menu2.collect{|i| i.valor_e_kc}.reduce(:+)).to be < @gasto_total
        
        end
        
        it "Prueba menú 3" do
        
            
             expect( @menu3.collect{|i| i.valor_e_kc}.reduce(:+)). to be < @gasto_total
        end
        
        
        it "Prueba menú 4" do
        
          
          
          expect( @menu4.collect{|i| i.valor_e_kc}.reduce(:+)).to be < @gasto_total
        
        end
        
        
        it "Prueba menú 5" do
        
          
          
          expect( @menu5.collect{|i| i.valor_e_kc}.reduce(:+)).to be > @gasto_total
        
        end
        
        it "Prueba usando bucles for para los menús" do
          Benchmark.bm do |x|
          x.report("for menús"){
            @menus_ordenados= [@menu1]
            @ordenar = 0.0
            for i in 0..9
            
              @ordenar = @menus[i].collect{|j| j.valor_e_kc}.reduce(:+)
              #puts @ordenar
              for j in 0..i
            
                if @ordenar < @menus_ordenados[j].collect{|k| k.valor_e_kc}.reduce(:+) 
                  @menus_ordenados.insert(j,@menus[i])
                  break
                end
              
                if j== i
                  @menus_ordenados.insert(j,@menus[i])
                end
              end
          
     
            end
          
        #puts "ordenado"
        #  for k in 0..9
          
         #   puts @menus_ordenados[k].collect{|y| y.valor_e_kc}.reduce(:+)
        #  end
          }end  
        end
        
        
        it "Prueba usando bucles for para los pacientes" do
          
          Benchmark.bm do |x|
          x.report("for pacientes"){
            @pacientes_ordenados = [@paciente_1]
            @ordenar = 0.0
          
            for i in 0..9
          
              @head = @pacientes.get_head.value
            
              @ordenar =  @head.gasto_e_total("Reposo")
              #puts @ordenar
            
              for j in 0..i
            
                if @ordenar < @pacientes_ordenados[j].gasto_e_total("Reposo")
                  @pacientes_ordenados.insert(j,@head)
                  break
                end
              
                if j== i
                  @pacientes_ordenados.insert(j,@head)
                end
              end
            end
          
        #puts "ordenado"
         # for k in 0..9
          
          #  puts @pacientes_ordenados[k].gasto_e_total("Reposo")
          #end
          
            }end 
        
        
        end
        
        it "Prueba usando each para los menús" do
        
         Benchmark.bm do |x|
         x.report("each menús"){
         @menus_ordenados= [@menu1]
            @ordenar = 0.0
          (0..9).each do
            |i|
            @ordenar = @menus[i].collect{|j| j.valor_e_kc}.reduce(:+)
            #puts @ordenar
            (0..i).each do
              |j|
              if @ordenar < @menus_ordenados[j].collect{|k| k.valor_e_kc}.reduce(:+) 
                @menus_ordenados.insert(j,@menus[i])
                break
              end
              
              if j== i
                  @menus_ordenados.insert(j,@menus[i])
              end
            end

     
          end
        
        #puts "ordenado"
         # for k in 0..9
          
          #  puts @menus_ordenados[k].collect{|y| y.valor_e_kc}.reduce(:+)
        #  end
         }end
        
        end
        it " Prueba usando each para ordenar los pacientes" do
         Benchmark.bm do |x|
         x.report("each pacientes"){
          @pacientes_ordenados = [@paciente_1]
          @ordenar = 0.0
          @pacientes.head = @head1
          
          (0..9).each do
            |i|
          
            @head = @pacientes.get_head.value
            
            @ordenar =  @head.gasto_e_total("Reposo")
            #puts @ordenar
            
            (0..i).each do
              |j|
            
              if @ordenar < @pacientes_ordenados[j].gasto_e_total("Reposo")
                @pacientes_ordenados.insert(j,@head)
                break
              end
              
              if j== i
                  @pacientes_ordenados.insert(j,@head)
              end
            end
          end
          
         # puts "ordenado"
          #for k in 0..9
          
         #   puts @pacientes_ordenados[k].gasto_e_total("Reposo")
         # end
         }end
        end
        
        it "Prueba usando sort para ordenar los menús" do
         Benchmark.bm do |x|
         x.report("sort menús"){
          @menus_ordenados = @menus.sort{|x,y| x.collect{|i| i.valor_e_kc}.reduce(:+) <=> y.collect{|i| i.valor_e_kc}.reduce(:+) }
        
          #for k in 0..9
           
           
           #puts @menus_ordenados[k].collect{|y| y.valor_e_kc}.reduce(:+)
          #end
         
         }end
        
        end
        
        it "Prueba usando el sort para ordenar los pacientes" do
       Benchmark.bm do |x|
       x.report("sort pacientes"){
          @pacientes.head = @head1
          @pacientes_ordenados = @pacientes.sort{|x,y| x.gasto_e_total("Reposo") <=> y.gasto_e_total("Reposo")}
          
          #@pacientes_ordenados = @pacientes.sort{|x,y| x.gasto_e_total("Reposo") <=> y.gasto_e_total("Reposo") }
          
          
         #for k in 0..9
          
          #puts @pacientes_ordenados[k].gasto_e_total("Reposo")
         #end
          
        }end
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
       
      # it "Prueba del to_s" do
       
       # puts "\n\n"
        #puts "Listado de pacientes sin tratamiento \n"
        #while(lista_ps.empty? != true)

         # aux = lista_ps.get_tail.value
        #  aux.to_s
        #end
        
        #puts "\n\n"
        #puts "Listado de pacientes con tratamiento \n"
        #while(lista_pc.empty?!=true)
         
         # aux2 = lista_pc.get_tail.value
          #aux2.to_s
        #end
      # end
      
      
      
      
      
      
      
      end
    
    end
    describe Menu do

    before :all do
    
        @menu = Menu.new("Lunes") do
        
            titulo  "Bajo en calorías"
            ingesta     :min => 30, :max => 35
            desayuno    :descripcion => "Pan de trigo integral",
                        :porcion => "1 rodaja",
                        :gramos => 100.0,
                        :grasas => 3.3,
                        :carbohidratos => 54.0,
                        :proteinas => 11.0,
                        :fibra => 2.3,
                        :sal => 0.06
            
            desayuno    :descripcion => "Actimel",
                        :porcion => "1 porción",
                        :gramos => 100.0,
                        :grasas => 3.4,
                        :carbohidratos => 4.4,
                        :proteinas => 3.6,
                        :sal => 0.05
                        
            almuerzo    :descripcion => "Arroz",
                        :porcion => "1 taza",
                        :gramos => 100.0,
                        :grasas => 0.9,
                        :carbohidratos => 81.6,
                        :proteinas => 6.67,
                        :fibra => 1.4,
                        :sal => 0.04
                        
            almuerzo    :descripcion => "Lentejas",
                        :porcion => "1/2 cucharón",
                        :grasas => 0.4,
                        :carbohidratos => 20.0,
                        :proteinas => 9.0,
                        :fibra => 8.0,
                        :sal => 0.02
                        
            almuerzo    :descripcion => "Naranja",
                        :porcion => "1 pieza",
                        :gramos => 100.0,
                        :grasas => 0.12,
                        :carbohidratos => 11.75,
                        :proteinas => 0.94,
                        :fibra => 2.4
                        
            cena        :descripcion => "Leche entera hacendado",
                        :porcion => "1 vaso",
                        :gramos => 100.0,
                        :grasas => 3.6,
                        :carbohidratos => 4.6,
                        :proteinas => 3.1,
                        :sal => 0.06
            
        
        end
    
    
    
    end
    
    
    it "debe existir el objeto menu" do
    
        expect(@menu.is_a?Menu).to eq(true)
    end
    
    it "menu pertenece a la clase Menu" do
        
        expect(@menu.class == Menu).to eq(true)
    
    end
    
    it "prueba del to_s" do
    
        puts @menu
    
    end



end
    
    

end





class EIN
   attr_reader :nombre, :grasa_t, :grasa_s, :hidratos_c, :azucares, :proteinas, :sal, :t_porciones, :porciones
   def initialize(nombre, grasa_t, grasa_s, hidratos_c, azucares, proteinas, sal, t_porciones, porciones)
       
       @nombre = nombre
       @grasa_t = grasa_t
       @grasa_s = grasa_s
       @hidratos_c = hidratos_c
       @azucares = azucares
       @proteinas = proteinas
       @sal = sal
       @valor_e_kj = valor_e_kj
       @valor_e_kc = valor_e_kc
       @t_porciones = t_porciones
       @porciones = porciones
       @ingesta_recomendada = [8400.0, 2000.0, 70.0, 20.0, 260.0, 90.0, 50.0, 6.0]
       
   end
   
   def valor_e_kj 
   
        (17.0 * hidratos_c) + (17.0 * proteinas) + (37.0 * grasa_t) + (25.0 * sal)
   end
   
   def valor_e_kc
       
       (4.0 * hidratos_c) + (4.0 * proteinas) + (9.0 * grasa_t) + (6.0 * sal)
   end
   
   
       def info
       
       
       puts "Información nutricional de #{@nombre}"
       puts "\t\t\t\t Por 100g ó 100ml de producto | IR (Por 100g/ml de producto) % | Por porción de #{@t_porciones}g/ml |  IR por porción de #{@t_porciones}g/ml de producto  %"
       puts "Valor energético (kj/kcal) |\t\t#{@valor_e_kj}/#{@valor_e_kc}\t      |\t\t #{((@valor_e_kj/@ingesta_recomendada[0])*100).round(2)} / #{((@valor_e_kc/@ingesta_recomendada[1])*100).round(2)}\t       |    #{(@t_porciones*@valor_e_kj)/100} / #{((@t_porciones*@valor_e_kc)/100).round(2)}     |\t #{(@t_porciones*(@valor_e_kj/@ingesta_recomendada[0])).round(2)} /  #{(@t_porciones*(@valor_e_kc/@ingesta_recomendada[1])).round(2)}"
       puts "Grasas de las cuales:      |\t\t#{@grasa_t}     \t      | \t #{((@grasa_t/@ingesta_recomendada[2])*100).round(2)}\t\t       |    #{(@t_porciones*@grasa_t)/100}\t       |\t #{(@t_porciones*(@grasa_t/@ingesta_recomendada[2])).round(2)} "
       puts "     Saturadas             |\t\t#{@grasa_s}     \t      | \t #{((@grasa_s/@ingesta_recomendada[3])*100).round(2)}\t\t       |    #{(@t_porciones*@grasa_s)/100}\t\t       |\t #{(@t_porciones*(@grasa_s/@ingesta_recomendada[3])).round(2)} "
       puts "Hidratos de carbono        |\t\t#{@hidratos_c}  \t\t      | \t #{((@hidratos_c/@ingesta_recomendada[4])*100).round(2)}\t\t       |    #{(@t_porciones*@hidratos_c)/100}\t       |\t #{(@t_porciones*(@hidratos_c/@ingesta_recomendada[4])).round(2)} "
       puts "de lo cuales:"
       puts "     Azúcares              |\t\t#{@azucares}     \t      | \t #{((@azucares/@ingesta_recomendada[5])*100).round(2)}\t\t       |    #{(@t_porciones*@azucares)/100}\t       |\t #{(@t_porciones*(@azucares/@ingesta_recomendada[5])).round(2)} "
       puts "Proteínas                  |\t\t#{@proteinas}     \t      | \t #{((@proteinas/@ingesta_recomendada[6])*100).round(2)}\t\t       |    #{(@t_porciones*@proteinas)/100}\t       |\t #{(@t_porciones*(@proteinas/@ingesta_recomendada[6])).round(2)} "
       puts "Sal                        |\t\t#{@sal}     \t      | \t #{((@sal/@ingesta_recomendada[7])*100).round(2)}\t\t       |    #{(@t_porciones*@sal)/100}\t\t       |\t #{(@t_porciones*(@sal/@ingesta_recomendada[7])).round(2)} "
   
       end
       
    def clasificar_sal
       
            if (sal <= 5.0)
                "Nivel de sal bajo"
            
            elsif (sal > 5.0 && sal <= 10.0)
                "Nivel de sal normal"
            
            elsif (sal > 10.0 && sal <= 50.0)
                "Nivel de sal alto"
            else
                "Nivel de sal muy alto"
            end
        
    end
       
    
    
   
       
   
   
end




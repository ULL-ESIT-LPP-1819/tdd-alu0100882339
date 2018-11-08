class EIN
   attr_reader :nombre, :grasa_t, :grasa_s, :hidratos_c, :azucares, :proteinas, :sal, :porciones
   def initialize(nombre, grasa_t, grasa_s, hidratos_c, azucares, proteinas, sal, porciones)
       
       @nombre = nombre
       @grasa_t = grasa_t
       @grasa_s = grasa_s
       @hidratos_c = hidratos_c
       @azucares = azucares
       @proteinas = proteinas
       @sal = sal
       @valor_e_kj = valor_e_kj
       @valor_e_kc = valor_e_kc
       @porciones = porciones
       
   end
   
   def valor_e_kj 
   
        (17.0 * hidratos_c) + (17.0 * proteinas) + (37.0 * grasa_t) + (25.0 * sal)
   end
   
   def valor_e_kc
       
       (4.0 * hidratos_c) + (4.0 * proteinas) + (9.0 * grasa_t) + (6.0 * sal)
   end
end
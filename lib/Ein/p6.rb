class EIN
   attr_reader :nombre, :grasa_t, :grasa_s, :hidratos_c, :azucares, :proteinas
   def initialize(nombre,v_energetico, grasa_t, grasa_s, hidratos_c, azucares, proteinas, sal)
       
       @nombre = nombre
       @v_energetico = v_energetico
       @grasa_t = grasa_t
       @grasa_s = grasa_s
       @hidratos_c = hidratos_c
       @azucares = azucares
       @proteinas = proteinas
       @sal = sal
   end
end
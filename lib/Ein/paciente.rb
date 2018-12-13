

class Paciente < Individuo
    attr_reader :peso, :talla, :sexo, :peso_teorico_ideal, :gasto_e_basal, :efecto_t
    
    def initialize(nombre, edad, peso, talla, sexo)
        super(nombre, edad)
        @peso = peso
        @talla = talla
        @sexo = sexo
        @peso_teorico_ideal = calcular_peso_ideal
        @gasto_e_basal = calcular_gasto_e_basal
        @efecto_t = calcular_efecto_t
        
    end
    
    
    def calcular_imc
        
       ( @peso/(@talla*@talla)).round(2)
        
    end
    
    def calcular_peso_ideal
        
        talla_i = @talla * 100
        
        ((talla_i - 150) * 0.75 + 50).round(2)    
    end
    
    def calcular_gasto_e_basal
        talla_i = @talla * 100
        if(@sexo == "Mujer")
            ((10*@peso)+(6.25*talla_i) - (5*@edad) - 161).round(2)
        else
            ((10*@peso)+(6.25*talla_i) - (5*@edad) - 5).round(2)
        end
    
    end
    
    def calcular_efecto_t
    
        (@gasto_e_basal * 0.10).round(2)
    
    end
    
    def clasificar_imc
        imc = calcular_imc
        
        if(imc < 18.5)
           "Bajo peso -- Delgado"
         elsif(imc >= 18.5 && imc <= 24.9)
            "Adecuado -- Aceptable"
         elsif(imc >= 25 && imc <=29.9)
            "Sobrepeso -- Sobrepeso"
         elsif(imc >= 30 && imc <= 34.9)
            "Obesidad grado 1 -- Obesidad"
         elsif(imc >= 35 && imc <= 39.9)
            "Obesidad grado 2 -- Obesidad"
         elsif(imc >= 40)
            "Obesidad grado 3 -- Obesidad"
        end
    end
    
    def to_s
        puts "------------------------------------------------------------------------------- \n"
        puts "\t Nombre: #{@nombre}"
        puts "\t Edad: #{@edad}"
        puts "\t Sexo: #{@sexo}"
        puts "\t Peso: #{@peso}"
        puts "\t Talla: #{@talla}"
        puts "\t Resultado de su imc: #{clasificar_imc}"
        puts "------------------------------------------------------------------------------- \n"
    
    end
    

end
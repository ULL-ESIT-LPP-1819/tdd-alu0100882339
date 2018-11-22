

class Paciente < Individuo
    attr_reader :peso, :talla, :sexo
    
    def initialize(nombre, edad, peso, talla, sexo)
        super(nombre, edad)
        @peso = peso
        @talla = talla
        @sexo = sexo
    end
    
    
    def calcular_imc
        
       ( @peso/(@talla*@talla)).round(2)
        
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
    

end
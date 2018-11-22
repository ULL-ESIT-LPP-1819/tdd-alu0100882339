

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
    

end
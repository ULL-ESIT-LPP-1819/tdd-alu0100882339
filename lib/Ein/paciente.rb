

class Paciente < Individuo
    attr_reader :peso, :talla
    
    def initialize(nombre, edad, peso, talla)
        super(nombre, edad)
        @peso = peso
        @talla = talla
    end
    

end
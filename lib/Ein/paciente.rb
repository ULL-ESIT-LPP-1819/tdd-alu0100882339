

class Paciente < Individuo
    attr_reader :peso
    
    def initialize(nombre, edad, peso)
        super(nombre, edad)
        @peso = peso
    end
    

end
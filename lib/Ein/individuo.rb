

class Individuo
    attr_reader :nombre, :edad
    include Comparable
    def initialize(nombre, edad)
       
       @nombre = nombre
       @edad = edad
    end
    
    def <=> (other)
    
        return nil unless other.instance_of?Individuo
        edad <=> other.edad
    
    end
    
    def to_s
    
        "#{@nombre}"
    

    end
end
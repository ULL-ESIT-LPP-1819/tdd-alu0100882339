
class Individuo
    attr_reader :nombre, :edad
    include Comparable
    def initialize(nombre, edad)
       
       @nombre = nombre
       @edad = edad
    end
    
    
end
class Menu

    attr_accessor :dia, :titulo, :ingestas, :desayunos, :almuerzos, :cenas
   
   
    def initialize (dia, &block)
    
        @dia = dia
        @titulo = nil
        @ingestas = []
        @desayunos = []
        @almuerzos = []
        @cenas = []
        
        if block_given?
            if block.arity == 1
                yield self
            else
                instance_eval(&block)
            end
        end
    
    end

    
    
    def titulo(tit)
    
        @titulo = tit
    
    end
    def ingesta(ing, options = {})
    
        ingesta = ing
        ingesta << "(#{options[:min]})" if options[:min]
        ingesta << "(#{options[:max]})" if options[:max]
        
        @ingestas << ingesta
    
    
    end
    
    def desayuno (des, options = {})
    
        desayuno = des
        desyuno << "(#{options[:descripcion]})" if options[:descripcion]
        desyuno << "(#{options[:porcion]})" if options[:porcion]
        desyuno << "(#{options[:gramos]})" if options[:gramos]
        desyuno << "(#{options[:grasas]})" if options[:grasas]
        desyuno << "(#{options[:carbohidratos]})" if options[:carbohidratos]
        desyuno << "(#{options[:proteinas]})" if options[:proteinas]
        desyuno << "(#{options[:fibra]})" if options[:fibra]
        desyuno << "(#{options[:sal]})" if options[:sal]
        
        @desayunos << desayuno
    
    end
    
    
    def almuerzo (alm, options = {})
    
        almuerzo = alm
        
        almuerzo << "(#{options[:descripcion]})" if options[:descripcion] 
        almuerzo << "(#{options[:porcion]})" if options[:porcion] 
        almuerzo << "(#{options[:gramos]})" if options[:gramos] 
        almuerzo << "(#{options[:grasas]})" if options[:grasas]  
        almuerzo << "(#{options[:carbohidratos]})" if options[:carbohidratos] 
        almuerzo << "(#{options[:proteinas]})" if options[:proteinas] 
        almuerzo << "(#{options[:fibra]})" if options[:fibra] 
        almuerzo << "(#{options[:sal]})" if options[:sal] 
        
        @almuerzos << almuerzo
    
    end
    
    
    def cena (cen, options = {})
    
        cena = cen
        
        cena << "(#{options[:descripcion]})" if options[:descripcion]
        cena << "(#{options[:porcion]})" if options[:porcion]
        cena << "(#{options[:gramos]})" if options[:gramos]
        cena << "(#{options[:grasas]})" if options[:grasas]
        cena << "(#{options[:carbohidratos]})" if options[:carbohidratos]
        cena << "(#{options[:proteinas]})" if options[:proteinas]
        cena << "(#{options[:fibra]})" if options[:fibra]
        cena << "(#{options[:sal]})" if options[:sal]
        
        @cenas << cena
    
    
    end
    
    
    
    
    def to_s
        #aqui tienes q cambiarlo por esto
        #output = "\n #{@dia}" porq si no no te imprime el dia estaras escachando las cosas
        @valor_total = 0
        output = "\n#{@titulo}\n"
        output << "#{@dia} \t\t Composición nutricional \n"
       
        output << "========================================================\n"
        output << "\t\t\tGrasas  Carbohidratos  Proteínas  Fibra  Sal  Valor energético\n"
        output << "Desayuno\n"
        @desayunos.each do |desayuno|
            
            if desayuno[:descripcion] == nil
                desayuno[:descripcion] = "--"
            end
            if desayuno[:grasas] == nil
                desayuno[:grasas] = 0.0
            end
            if desayuno[:carbohidratos] == nil
                desayuno[:carbohidratos] = 0.0
            end
            if desayuno[:proteinas] == nil
                desayuno[:proteinas] = 0.0
            end
            if desayuno[:fibra] == nil
                desayuno[:fibra] = 0.0
            end
            if desayuno[:sal] == nil
                desayuno[:sal] = 0.0
            end
            output << "#{desayuno[:descripcion]}\t"
            output << "#{desayuno[:grasas]} "
            output << "\t   #{desayuno[:carbohidratos]} "
            output << "\t#{desayuno[:proteinas]} "
            output << "\t  #{desayuno[:fibra]} "
            output << "\t#{desayuno[:sal]} "
            output << "\t#{@valor_e_kc_d = ((4.0 * desayuno[:carbohidratos]) + (4.0 * desayuno[:proteinas]) + (9.0 * desayuno[:grasas]) + (6.0 * desayuno[:sal])).round(2)}\n"
            @valor_total += @valor_e_kc_d
        end
        
        output << "\n\nAlmuerzo\n"
        @almuerzos.each do |almuerzo|
            if almuerzo[:descripcion] == nil
                almuerzo[:descripcion] = "--"
            end
            if almuerzo[:grasas] == nil
                almuerzo[:grasas] = 0.0
            end
            if almuerzo[:carbohidratos] == nil
                almuerzo[:carbohidratos] = 0.0
            end
            if almuerzo[:proteinas] == nil
                almuerzo[:proteinas] = 0.0
            end
            if almuerzo[:fibra] == nil
                almuerzo[:fibra] = 0.0
            end
            if almuerzo[:sal] == nil
                almuerzo[:sal] = 0.0
            end
            output << "\n#{almuerzo[:descripcion]} "
            output << "  \t\t #{almuerzo[:grasas]} "
            output << "\t   #{almuerzo[:carbohidratos]} "
            output << "\t#{almuerzo[:proteinas]} "
            output << "\t  #{almuerzo[:fibra]} "
            output << "\t#{almuerzo[:sal]} "
            output << "\t#{@valor_e_kc_a = ((4.0 * almuerzo[:carbohidratos]) + (4.0 * almuerzo[:proteinas]) + (9.0 * almuerzo[:grasas]) + (6.0 * almuerzo[:sal])).round(2)}"
            @valor_total += @valor_e_kc_a
            
        end
        
        
        
        output << "\n\nCena\n"
        @cenas.each do |cena|
            if cena[:descripcion] == nil
                cena[:descripcion] = "--"
            end
            if cena[:grasas] == nil
                cena[:grasas] = 0.0
            end
            if cena[:carbohidratos] == nil
                cena[:carbohidratos] = 0.0
            end
            if cena[:proteinas] == nil
                cena[:proteinas] = 0.0
            end
            if cena[:fibra] == nil
                cena[:fibra] = 0.0
            end
            if cena[:sal] == nil
                cena[:sal] = 0.0
            end
            output << "\n#{cena[:descripcion]} "
            output << "   #{cena[:grasas]} "
            output << "\t   #{cena[:carbohidratos]} "
            output << "\t#{cena[:proteinas]} "
            output << "\t  #{cena[:fibra]} "
            output << "\t#{cena[:sal]} "
            output << "\t#{@valor_e_kc_c = ((4.0 * cena[:carbohidratos]) + (4.0 * cena[:proteinas]) + (9.0 * cena[:grasas]) + (6.0 * cena[:sal])).round(2)}"
            @valor_total += @valor_e_kc_c
        #Tienes q devolver la variable
    end
        output << "\nValor energético total"
        output << "\t#{@valor_total}"
        output
    
    end
end

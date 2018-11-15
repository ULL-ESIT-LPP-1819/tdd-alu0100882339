Node = Struct.new(:value, :next, :prev)

class Lista 
   attr_accessor :head, :tail
    
    def initialize
        
       @head = nil
       @tail = nil
        
    end
    
    def set_head(value)
       nodo = Node.new(value, nil, nil)
       
       if(@head== nil)
           @head = nodo
           @tail = nodo
               
       else
        
        @head.prev = nodo
        nodo.next = @head
        @head = nodo
       end
       
       
        
    end
    
    def set_tail(value)
        nodo = Node.new(value, nil, nil)
        
        if(@tail == nil)
            @head = nodo
            @tail = nodo
        else
            
            @tail.next = nodo
            nodo.prev = @tail
            @tail = nodo
        end
    
    end
    
    def get_head
    
        aux = @head
        @head = @head.next
        aux.next = nil
        aux
        
    
    end
        
        
end
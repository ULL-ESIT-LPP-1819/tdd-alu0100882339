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
        nodo.next = @head
        @head.prev = nodo
        @head = nodo
       end
       
       
        
    end
    
   
        
end
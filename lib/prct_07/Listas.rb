Nodo = Struct.new(:value, :siguiente)

class Lista
    
    attr_accessor :head, :tail, :contador
    
    def initialize
        @head = nil #inicio de la lista
        @tail = nil #fin de la lista
        @contador=0  #variable que determina el tamaño actual de la lista
    end
    
    def insert_head(nodo)
        
        if empty == true
            nodo.siguiente = nil
            @head = nodo
            @tail = nodo
        else
            nodo.siguiente = @head
            @head = nodo
        end
        @contador = @contador + 1
        
    end
end
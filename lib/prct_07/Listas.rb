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
    
    def insert_tail(nodo)
        if empty 
            insert_head(nodo)
        else
            aux = @head
            while aux.siguiente != nil do
                aux = aux.siguiente
            end
            aux.siguiente = nodo
            nodo.siguiente = nil
            @tail=nodo
            @contador = @contador + 1
        end
    end
    
    def extract_head
        aux = @head
        @head = @head.siguiente
        @contador = @contador - 1
        if @head == nil
            @tail = nil
        end
        return aux.value
    end
    
    def extract_tail
        actual = @head
        
        if @contador == 1
            return extract_head
        else    
            while actual.siguiente != nil do
                previo = actual
                actual = actual.siguiente
            end
            previo.siguiente = nil
            @tail = previo
            @contador = @contador - 1
            return actual.value
        end
    end
    
    def to_s
        aux = @head
        if empty != true
            puts "\n******REFERENCIAS BIBLIOGRAFICAS******"
        end
        while aux != nil do
            var = aux.value
            print "#{var}\n\n"
            aux = aux.siguiente
        end
    end
    
    def empty
        return contador==0
    end
    
end
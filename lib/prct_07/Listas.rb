Nodo = Struct.new(:value, :siguiente)

class Lista
    
    attr_accessor :head, :tail, :contador
    
    def initialize
        @head = nil #inicio de la lista
        @tail = nil #fin de la lista
        @contador=0  #variable que determina el tamaño actual de la lista
    end
end
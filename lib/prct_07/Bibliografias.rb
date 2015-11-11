class Bibliografias

    attr_accessor :autores , :titulo , :edicion , :isbn , :editorial , :publicacion , :serie #geters y serters asi nos ahorramos escribirlo 

    def initialize(autores,titulo,editorial,edicion,publicacion,isbn)
        @autores = autores
        @titulo = titulo
        @editorial = editorial
        @edicion = edicion
        @publicacion = publicacion
        @isbn = isbn
    end
    
    
    def to_s
        print "#{@autores},#{@titulo},#{@editorial},#{@edicion},#{@publicacion} #{@isbn}"
    end

end
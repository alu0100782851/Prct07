require 'spec_helper'
require 'lib/prct_07/Bibliografias'
require 'lib/prct_07/Listas'

describe Bibliografias do

  before :each do
    #referencias almacenadas como objetos de la clase bibliografias
    @libro_1 = Bibliografias.new("Dave Thomas, Andy Hunt, Chad Fowler","Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby)","Pragmatic Bookshelf","4","July 7, 2013","13-1937785499 , 10-1937785491")
    @libro_2 = Bibliografias.new("Scott Chacon","Pro Git 2009th Edition. (Pro)","Apress","2009","August 27, 2009", "978-1430218333 , 1430218339")
    @libro_3 = Bibliografias.new("David Flanagan, Yukihiro Matsumoto","The Ruby Programming Language","O’Reilly Media","1","February 4, 2008","0596516177, 978-0596516178")
    @libro_4 = Bibliografias.new("David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy","The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby)","Pragmatic Bookshelf","1","December 25, 2010","1934356379, 978-1934356371")
    @libro_5 = Bibliografias.new("Richard E. Silverman","Git Pocket Guide","O’Reilly Media","1","August 2, 2013","1449325866, 978-1449325862")
  end
  
end

#Pruebas con la lista
describe Lista do
  
    before :each do
      #Nodos que contienen las referencias para hacer las pruebas
      @nodo1 = Nodo.new(@libro_1)
      @nodo2 = Nodo.new(@libro_2)
      @nodo3 = Nodo.new(@libro_3)
      @nodo4 = Nodo.new(@libro_4)
      @nodo5 = Nodo.new(@libro_5)

      @lista = Lista.new
    end

  describe "Nodo" do
   
    it "#Debe existir un Nodo de la lista con sus datos y su siguiente" do
      expect(@nodo1.class).to eq(Nodo)
    end 
  
  end
  
  describe "Lista" do

    it "#Se extrae el primer elemento de la lista" do
      @lista.insert_head(@nodo1)
      expect(@lista.extract_head()).to eq(@nodo1.value)
    end
    
    it "#Se puede insertar un elemento" do
     	  @lista.insert_head(@nodo2)
     	  expect(@lista.head.value).to eq(@nodo2.value)
    end
    
    it "#Se pueden insertar varios elementos" do
      @lista.insert_head(@nodo3)
      @lista.insert_tail(@nodo4)
      @lista.insert_head(@nodo5)
      
      expect(@lista.extract_head()).to eq(@nodo5.value)
      expect(@lista.extract_tail()).to eq(@nodo4.value)
      expect(@lista.extract_head()).to eq(@nodo3.value)
    end
    
    it "#Debe existir una lista con su cabeza" do
      @lista.insert_head(@nodo5)
      expect(@lista.head.class).to eq(Nodo)
    end
    
  end
  
end
###**Lenguajes y Paradigmas de la Programación. Práctica 6**
*Autor: Moisés Yanes Carballo*


####**Introducción**
Una referencia bibliográfica es un conjunto mínimo de datos que permite la identificación de una publicación o de una parte de la misma.

Partiendo de la estructura de gema creada en la practica anterior, implementar una clase Ruby para representar y gestionar listas enlazadas (Linked List).

En Ruby, puesto que no existe un objeto List, se puede conseguir lo mismo con Arrays.

En estos arrays deben almacenarse las referencias y poder insertar y extraer referencias de la lista.


####**Documentación**
Para llevar a cabo la practica han sido necesarios los ficheros que se especifican a continuación, así como la funcionalidad de cada uno.


1. **.gitignore** --> Contiene todas las extensiones de los ficheros que no queremos se añadan a nuestro repositorio git.

2. **Readme.md** --> Contiene una explicación detallada de la práctica. 

3. **Bibliografias.rb** --> Contiene el código de la clase en Ruby que permite representar referencias de una bibliografía.

4. **Listas.rb** --> Contiene el código de la clase en Ruby que permite trabajar con una lista enlazada, asi como la struct que implementa los nodos de la lista.
 
4. **prct_07_spec.rb** --> Contiene el código con las expectativas necesarias para llevar a cabo las TDD. 

5. **Rakefile** --> Contiene las sentencias necesarias para llevar a cabo las TDD.

####**Desarrollo**
En primer lugar se ha creado la estructura de directorio de trabajo pertinente en la cual se distribuirán posteriormente cada carpeta o fichero de la practica.

Para la creación de la gema por tanto se ha hecho uso de la herramienta *Bundler*, siguiendo los pasos tal y como se indican a continuación:

Para crear la estructura de la gema:
> - bundle gem prct06

Luego, se ha modificado el fichero prct06.gemspec para añadir en la última línea la dependencia de desarrollo de rspec.
> - spec.add_development_dependency "rspec", "~> 2.11"

Finalmente hemos ejecutado los comandos:
> - bundle install
> - bundle exec rspec --init

Con la estructura de la gema ya creada hemos procedido con el desarrollo de las TDD, para ello dentro del fichero 'prct_07_spec.rb' hemos añadido cada una de las pruebas necesarias para poder desarrollar nuestra clase en base a dichas pruebas. Algunas de las pruebas realizadas son las siguientes:
> - Comprobación de que debe existir un Nodo de la lista con sus datos y su siguiente
> - Comprobación de que se puede extraer el primer elemento de la lista
> - Comprobación de que se puede insertar un elemento

Completado el fichero de expectativas, otro de los pasos que he realizado en el desarrollo de nuestra practica ha sido la elaboración de la clase en base a los resultados obtenidos mediante las TDD. 

En dicha clase se encuentran las funciones a través de las cuales se puede insertar o extraer nodos de la lista, los cuales contienen las referencias.


####**Guion**
1.Partiendo de la estructura de gema creada en la practica anterior, implementar una clase Ruby para representar y gestionar listas enlazadas (Linked List).

En Ruby, puesto que no existe un objeto List, se puede conseguir lo mismo con Arrays:
a = [] a = []
a.unshift 3 a << 2
a.unshift 2 a << 3

Por lo tanto, los arrays de Ruby pueden funcionar como listas enlazadas, puesto que los metodos push, unshift e insert añaden un nuevo elemento a la lista y los metodos pop y shift eliminan un elemento de la lista. Sin embargo, no se utilizara esta aproximacion . Se abordara la implementacion de una estructura de datos mediante una lista enlazada.

Para el desarrollo de la clase utilizar la metodologia de desarrollo dirigido por pruebas (Test Driven Development - TDD) y la herramienta RSpec. Empezar el desarrollo desde cero, no reciclar codigo.

2.Crear una prueba para la siguiente relacion de referencias bibliograficas:

a) Dave Thomas, Andy Hunt, Chad Fowler. Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby). Pragmatic Bookshelf; 4 edition (July 7, 2013). ISBN-13: 978-1937785499. ISBN-10: 1937785491.

b) Scott Chacon. Pro Git 2009th Edition. (Pro). Apress; 2009 edition (August  27, 2009). ISBN-13: 978-1430218333. ISBN-10: 1430218339.

c) David Flanagan, Yukihiro Matsumoto. The Ruby Programming Language. O’Reilly Media; 1 edition (February 4, 2008). ISBN-10: 0596516177. ISBN 13: 978-0596516178.

d) David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy. The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby). Pragmatic Bookshelf; 1 edition (December 25, 2010). ISBN-10: 1934356379. ISBN-13: 978-1934356371.

e) Richard E. Silverman Git Pocket Guide O’Reilly Media; 1 edition (August 2, 2013). ISBN-10: 1449325866. ISBN-13: 978-1449325862.

3.Escribir la direccion http del repositorio que se ha creado en Bitbucket en la tarea habilitadan en el Campus Virtual
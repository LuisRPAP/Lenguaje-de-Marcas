(:
(:ejemplo1:)
for $x in doc("libros.xml")/biblioteca/libros/libro
return <libro>{$x/titulo, $x/editorial}</libro>
:)
(:
(:ejemplo2:)
for $x in doc("libros.xml")/biblioteca/libros/libro
return ($x/titulo, $x/editorial)
:)
(:
(:ejemplo3:)
for $x in doc("libros.xml")/biblioteca/libros/libro
return (data($x/titulo))
:)
(:
(:Ejercicio 2:)
for $x in doc("libros.xml")/biblioteca/libros/libro
where $x/paginas < 100
return (data($x/titulo))
:)
(:
(:ejemplo3:)
for $x in doc("libros.xml")/biblioteca/libros/libro
let $y := $x/libro[number(paginas) <100]
return count($y)
:)

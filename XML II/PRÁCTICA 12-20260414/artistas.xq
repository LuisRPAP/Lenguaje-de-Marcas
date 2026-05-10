(:
(:Ejercicio 1:)
for $x in doc ("artistas.xml")/artistas/artista
return <datos>{$x/nombreCompleto,$x/pais}</datos>
:)
(:
(:Ejercicio 2:)
for $x in doc ("artistas.xml")/artistas/artista
where $x [nacimiento<1500]
return data($x/nombreCompleto)
:)
(:
(:Ejercicio 3:)
for $x in doc ("artistas.xml")/artistas/artista
where not($x/fallecimiento)
return <datos>{$x/nombreCompleto,$x/pais}</datos>
:)
(:
(:Ejercicio 4:)
for $x in doc ("artistas.xml")/artistas/artista
where $x[pais="España"]
return <datos>{$x/nombreCompleto,$x/pais}</datos>
:)

(:Ejercicio 5:)
for $x in doc ("artistas.xml")/artistas
let $y := $x/artista[nacimiento<1600]
return count($y)

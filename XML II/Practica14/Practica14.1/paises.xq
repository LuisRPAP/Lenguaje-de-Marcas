(:
(:Ejercicio 1:)
for $x in doc ("paises.xml")/mundo/pais
return <dato>{$x/nombre}</dato>
:)
(:
(:Ejercicio 2:)
for $x in doc ("paises.xml")/mundo/pais
return <dato>{$x/nombre,$x/capital}</dato>
:)
(:
(:Ejercicio 3:)
for $x in doc ("paises.xml")/mundo/pais
where $x/continente="Europa"
return <dato>{$x/nombre,$x/capital}</dato>
:)

(:
(:Ejercicio 4:)
for $x in doc ("paises.xml")/mundo/pais
where $x/moneda="Euro"
return <dato>{$x/nombre,$x/capital}</dato>
:)
(:
(:Ejercicio 5:)
for $x in doc ("paises.xml")/mundo/pais
return <dato>{$x/nombre,$x/continente}</dato>
:)
(:
(:Ejercicio 6:)
for $x in doc ("paises.xml")/mundo/pais
where $x/habitantes>50 and $x/habitantes/@unidad="millones"
return <dato>{$x/nombre}</dato>
:)
(:
(:Ejercicio 7:)
for $x in doc ("paises.xml")/mundo/pais
order by number($x/habitantes) descending
return <dato>{$x/nombre,$x/habitantes}</dato>
:)
(:
(:Ejercicio 8:)
for $x in doc ("paises.xml")/mundo/pais
where $x/continente="América"
order by number($x/extension) descending
return <dato>{$x/nombre,$x/extension}</dato>
:)
(:
(:Ejercicio 9:)
for $x in doc ("paises.xml")/mundo/pais
where starts-with($x/capital,"B")
return <dato>{$x/nombre,$x/capital}</dato>
:)
(:
(:Ejercicio 10:)
for $x in doc ("paises.xml")/mundo/pais
where $x/moneda!="Euro"
return <dato>{$x/nombre,$x/capital}</dato>
:)
(:
(:Ejercicio 11:)
for $x in doc ("paises.xml")/mundo/pais
group by $y:=$x/continente
let $z := count($x/continente)
order by $z descending
return <dato>{$z,$y}</dato>
:)

(:Ejercicio 12:)
for $x in doc ("paises.xml")/mundo/pais
let $y:=(number($x/habitantes))
return <dato>{$y}</dato>

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
(:
(:Ejercicio 12:)
for $x in doc ("paises.xml")/mundo/pais
let $y:=(number($x/habitantes))
return <dato>{$y}</dato>
:)
(:
(:Ejercicio 13:)
for $x in doc ("paises.xml")/mundo
let $y:=(avg($x/pais/habitantes))
return <dato>{$y}</dato>
:)
(:
(:Ejercicio 14:)
for $x in doc("paises.xml")/mundo/pais
let $y := $x/continente
group by $y
return <dato>{($y,count($x))}</dato>
:)
(:
(:Ejercicio 15:)
for $z in doc("paises.xml")/mundo/pais
let $y := (for $x in doc("paises.xml")/mundo/pais[nombre = "España"]
                return $x/extension)
where $z/extension > $y
return <dato>{($z/nombre,'-',$z/extension)}</dato>
:)
(:
(:Ejercicio 16:)
for $x in doc("paises.xml")/mundo/pais
let $y := (for $z in doc("paises.xml")/mundo
           return max($z/pais/extension))
where $x/extension = $y
return <dato>{($x/nombre,$x/extension)}</dato>
:)
(:
(:Ejercicio 17:)
for $x in doc("paises.xml")/mundo/pais
let $y := (for $z in doc("paises.xml")/mundo
           return max($z/pais/habitantes))
where $x/habitantes = $y
return <dato>{($x/nombre,$x/habitantes)}</dato>
:)
(:

(:Ejercicio 18:)
for $x in doc("paises.xml")/mundo/pais
let $y := $x/continente
group by $y
return <dato>{($y,'Extension media',avg($x/extension))}</dato>
:)
(:
(:Ejercicio 19:)
(for $x in doc("paises.xml")/mundo/pais
let $y := $x/continente
group by $y
let $z := sum($x/habitantes)
order by $z descending
return <dato>{$y}</dato>)[1] 
:)
(:
(:Ejercicio 20:)
(for $x in doc("paises.xml")/mundo/pais
let $y:=$x/habitantes
order by number($y) descending
return <dato>{$x/capital,$y}</dato>)[1]
:)
(:
(:Ejercicio 21:)
let $media := avg(doc("paises.xml")/mundo/pais/extension)
for $x in doc("paises.xml")/mundo/pais
where $x/extension > $media
return <dato>{($x/nombre,$x/extension,'Extension media',$media)}</dato>
:)


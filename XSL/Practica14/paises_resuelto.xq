
(:(:1:)
for $x in doc("paises.xml")/mundo/pais
return $x/nombre


(:2:)
for $x in doc("paises.xml")/mundo/pais
return ($x/nombre, $x/capital)


(:3:)
for $x in doc("paises.xml")/mundo/pais
where $x/continente = "Europa"
return $x/nombre


(:4:)
for $x in doc("paises.xml")/mundo/pais
where $x/moneda = "Euro"
return $x/nombre


(:5:)
for $x in doc("paises.xml")/mundo/pais
return ($x/nombre, $x/continente)


(:6:)
for $x in doc("paises.xml")/mundo/pais
where $x/habitantes > 50 and $x/habitantes/@unidad = "millones"
return $x/nombre


(:7:)
for $x in doc("paises.xml")/mundo/pais
order by number($x/habitantes) descending
return ($x/nombre, $x/habitantes)


(:8:)
for $x in doc("paises.xml")/mundo/pais
where $x/continente = "América"
order by number($x/extension)
return $x/nombre


(:9:)
for $x in doc("paises.xml")/mundo/pais
where starts-with($x/capital, "B")
return ($x/nombre, $x/capital)


(:10:)
for $x in doc("paises.xml")/mundo/pais
where $x/moneda != "Euro"
return $x/nombre


(:11:)
for $x in doc("paises.xml")/mundo/pais
let $y := $x/continente
group by $y
order by count($x) descending
return ($y, count($x))



(:12:)
sum(
for $x in doc("paises.xml")/mundo/pais
return sum(number($x/habitantes))
)



(:13:)
avg(
for $x in doc("paises.xml")/mundo/pais
where $x/nombre != "Ciudad del Vaticano" 
return avg(number($x/habitantes))
)


(:14:)
for $x in doc("paises.xml")/mundo/pais
let $y := $x/continente
group by $y
return ($y, count($x))



(:15:)
for $mayores in doc("paises.xml")/mundo/pais
let $extesp := (for $x in doc("paises.xml")/mundo/pais[nombre = "España"]
                return $x/extension)
where $mayores/extension > $extesp
return ($mayores/nombre, $mayores/extension) 




(:16 FUNCIONA:)
for $x in doc("paises.xml")/mundo/pais
let $y := (for $grande in doc("paises.xml")/mundo
           return max($grande/pais/extension))
where $x/extension = $y
return ($x/nombre, $y)



(:17:)
for $x in doc("paises.xml")/mundo/pais
let $y:= (for $poblado in doc("paises.xml")/mundo
          return max($poblado/pais/habitantes))
where $x/habitantes = $y
return ($x/nombre, $x/habitantes)


(:18:)
for $x in doc("paises.xml")/mundo/pais
let $y := $x/continente
group by $y
return ($y, avg($x/extension))




(:19:)               
let $conti := (
    for $a in doc("paises.xml")/mundo/pais
    let $b := $a/continente
    group by $b
    order by sum($a/habitantes) descending
    return ($b, sum($a/habitantes)))
return ($conti[1], $conti[2])


  
(:20:)               
for $x in doc("paises.xml")/mundo/pais
let $y:= (for $poblado in doc("paises.xml")/mundo
          return max($poblado/pais/habitantes))
where $x/habitantes = $y
return ($x/nombre, $x/habitantes, $x/capital)
         


(:21:)
for $masquemedia in doc("paises.xml")/mundo/pais
let $media := (for $x in doc("paises.xml")/mundo
               return avg($x/pais/extension))
where $masquemedia/extension > $media
return ($masquemedia/nombre, $masquemedia/extension)   
:)




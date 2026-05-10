(:
(:Ejercicio 1:)
for $x in doc ("impresoras.xml")/impresoras/impresora
where $x[@tipo="láser"]
return <dato>{$x/modelo}</dato>
:)
(:
(:Ejercicio 2:)
for $x in doc ("impresoras.xml")/impresoras/impresora
where count($x/tamaño)>1
return <dato>{$x/marca,$x/modelo}</dato>
:)
(:
(:Ejercicio 3:)
for $x in doc ("impresoras.xml")/impresoras/impresora
where $x/tamaño="A3"
return <dato>{$x/marca,$x/modelo}</dato>
:)
(:
(:Ejercicio 4:)
for $x in doc ("impresoras.xml")/impresoras/impresora
where $x/tamaño="A3" and count($x/tamaño)=1
return <dato>{$x/marca,$x/modelo}</dato>
:)
(:
(:Ejercicio 5:)
for $x in doc ("impresoras.xml")/impresoras/impresora
where count($x/enred)>0
return <dato>{$x/modelo}</dato>
:)
(:
(:Ejercicio 6:)
for $x in doc ("impresoras.xml")/impresoras
return <dato>{count($x/impresora/enred)}</dato>
:)
(:
(:Ejercicio 7:)
for $x in doc ("impresoras.xml")/impresoras/impresora
where $x/@tipo="matricial" and $x/marca="HP"
return <dato>{$x/marca,$x/modelo}</dato>
:)
(:
(:Ejercicio 8:)
for $x in doc ("impresoras.xml")/impresoras/impresora
where $x[peso>2.5]
return <dato>{$x/@numSerie}</dato>
:)
(:
(:Ejercicio 9:)
for $x in doc ("impresoras.xml")/impresoras/impresora
where count($x/tamaño)=1
return <dato>{$x/marca,data($x/@numSerie)}</dato>
:)
(:
(:Ejercicio 10:)
for $x in doc ("impresoras.xml")/impresoras/impresora
where $x/tamaño!="A3"
return <dato>{$x/marca,$x/modelo}</dato>
:)
(:
(:Ejercicio 11:)
for $x in doc ("impresoras.xml")/impresoras
return <dato>{count($x/impresora/enred)}</dato>
:)
(:
(:Ejercicio 12:)
for $x in doc ("impresoras.xml")/impresoras/impresora
return <dato>{concat(data($x/@numSerie),' unidades ',count($x/tamaño))}</dato>
:)
(:
(:Ejercicio 13:)
for $x in doc ("impresoras.xml")/impresoras/impresora
where $x/cartucho!="C-456P" and $x/@tipo="láser"
return <dato>{$x/marca,$x/modelo}</dato>
:)
(:
(:Ejercicio 14:)
for $x in doc ("impresoras.xml")/impresoras/impresora
group by $i := $x/marca
return <dato>{$x/marca,count($i)}</dato>
:)

(:Ejercicio 15:)
for $x in doc ("impresoras.xml")/impresoras/impresora
where $x[@tipo="matricial" and peso>3.5]
return <dato>{$x/marca,data($x/@numSerie)}</dato>


       
            function color(id_objeto) {
                document.getElementById(id_objeto).style.backgroundColor="red";
            }
            function colorAnt(id_objeto) {
                document.getElementById(id_objeto).style.backgroundColor="blue";
            }
            function gracias(id_objeto) {
            document.getElementById(id_objeto).innerHTML = " Mmmmm Gracias";
            }
            function raton(id_objeto) {
            document.getElementById(id_objeto).innerHTML = "Pasa el ratón";
            }
            function bombillaOn(id_objeto) {
                document.getElementById(id_objeto).src="Imagenes/BombillaEncendida.png";
            }
            function bombillaOff(id_objeto) {
                document.getElementById(id_objeto).src="Imagenes/BombillaApagada.png";
            }
            function posicion1(id_objeto) {
                document.getElementById("b5").style.visibility = "hidden";
                document.getElementById("b6").style.visibility = "visible";
            }
            function posicion2(id_objeto) {
                document.getElementById("b5").style.visibility ="visible";
                document.getElementById("b6").style.visibility ="hidden";
            }
        

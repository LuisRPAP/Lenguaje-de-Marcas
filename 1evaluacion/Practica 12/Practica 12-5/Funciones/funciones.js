
function foco(id_objeto) {
    document.getElementById(id_objeto).style.border = "6px solid red";
}
function sinfoco(id_objeto) {
    document.getElementById(id_objeto).style.border = "2px solid black";
}

function focozona(id_objeto) {
    document.getElementById(id_objeto).style.backgroundColor = "rgba(155, 155, 155, 0.5)";

}
function sinfocozona(id_objeto) {
    document.getElementById(id_objeto).style.backgroundColor = "transparent";

}
function confirmar(event) {

    const confirmacion = confirm("¿Estás seguro? Vamos a enviar los datos.");

    if (!confirmacion) {
        event.preventDefault();
    }
};
function anular(event) {

    const confirmacion = confirm("¿Estás seguro? Se van a borrar todos los datos del formulario.");

    if (!confirmacion) {
        event.preventDefault();
    }
};
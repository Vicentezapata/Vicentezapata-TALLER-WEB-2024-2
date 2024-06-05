function miPrimeraChamba(desde, hasta) {
    alert("DESDE MI PRIMERA FUNCION")
    var contador = desde
    for (contador; contador <= hasta; contador++) {
        console.log(contador)
    }
}
function obtenerFormulario() {
    //alert("ACCION DESDE EL FORMULARIO")
    var nombre = document.getElementById("nombre").value
    var vacuna = document.getElementById("vacuna").value
    var precio = document.getElementById("precio").value
    var fecha = document.getElementById("fecha").value
    var proxDosis = document.getElementById("proxDosis").value
    var errores = ""
    if (nombre.length <= 1) {
        errores = errores + "NOMBRE ES CAMPO REQUERIDO O DEBE SER MAYOR A 1 CARACTER\n"
    }
    if (vacuna.length == 0) {
        errores = errores + "VACUNA ES CAMPO REQUERIDO\n"
    }
    if (precio.length == 0) {
        errores = errores + "PRECIO ES CAMPO REQUERIDO\n"
    }
    if (fecha.length == 0) {
        errores = errores + "FECHA ES CAMPO REQUERIDO\n"
    }
    if (errores != 0) {
        alert(errores)
    }


    console.log("nombre " + nombre + " vacuna " + vacuna + " precio " + precio + " fecha " + fecha + " proxDosis " + proxDosis)
    console.log("largo nombre " + nombre.length + ", largo  vacuna " + vacuna.length + ", largo  precio " + precio.length + ", largo  fecha " + fecha.length + ", largo  proxDosis " + proxDosis.length)
    return false
}

function obtenerFormularioJquery() {
    var nombre = $("#nombre").val()
    var vacuna = $("#vacuna").val()
    var precio = $("#precio").val()
    var fecha = $("#fecha").val()
    var proxDosis = $("#proxDosis").val()
    var erroCampoRequerido = "<p class='text-danger errorForm'>*CAMPO REQUERIDO</p>"
    var errores = ""
    $(".errorForm").remove()
    if (nombre.length <= 1) {
        errores = errores + "<p class='text-danger'>*NOMBRE ES CAMPO REQUERIDO O DEBE SER MAYOR A 1 CARACTER</p>"
        $("#campoNombre").append(erroCampoRequerido)
    }
    if (vacuna.length == 0) {
        errores = errores + "<p class='text-danger'>*VACUNA ES CAMPO REQUERIDO</p>"
        $("#campoVacuna").append(erroCampoRequerido)
    }
    if (precio.length == 0) {
        errores = errores + "<p class='text-danger'>*PRECIO ES CAMPO REQUERIDO</p>"
        $("#campoPrecio").append(erroCampoRequerido)
    }
    if (fecha.length == 0) {
        errores = errores + "<p class='text-danger'>*FECHA ES CAMPO REQUERIDO</p>"
        $("#campoFecha").append(erroCampoRequerido)
    }
    if (proxDosis.length == 0) {
        errores = errores + "<p class='text-danger'>*PROXIMA DOSIS</p>"
        $("#campoDosis").append(erroCampoRequerido)
    }
    if (errores != "") {
        //alert(errores)
        //$("#errores").html(errores) 
        Swal.fire({
            title: "Error!",
            html: errores,
            icon: "error"
        });
    } else {
        $("#errores").empty()
        var data = {
            nombre:nombre,
            vacuna:vacuna,
            precio:precio,
            fecha:fecha,
            proxDosis:proxDosis
        }
        console.log(data)
        Pageclip.send('nNb5eybLXSIg3NjGtq0ZkQZt2jcGq4dW','Vacunas',data,function (error,response){
            console.log('error?', error, '; response:', error || response)

        })
        
    }
    return false

}
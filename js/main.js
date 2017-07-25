var offset = 0;
var num_items = 1;
//Cuando se realizan las llamadas AJAX durante el scrolling, no se espera al resultado para lanzar
//la siguiente llamada lo que povoca inconsistencias y saltos en el resultado de las consultas.
//La variable esperar es un semaforo que permite lanzar la siguiente consulta toda
//que se ha recibido el resultado de la anterior
var esperar = false;

$(function(){    
    cargarDatos(4);

});

//Cada vez que se hace scroll hacia abajo se carga un nuevo item. Pare ello se controla
//que ha ocurrido un desplazamiento midiendo la
$(window).scroll(function(){
    
    if($(window).scrollTop() >= $(document).height()- $(window).height()-100){
        cargarDatos(1);
    }
});

function cargarDatos(a){
    //Este if controla si se ha recibido el resultado de la consulta anterior
    if (!esperar){
        esperar = true;
        $.ajax({
            url: "api.php",
            type:"POST",
            dataType: "json",
            data: {
                "offset":offset,
                "num_items":a
            },
            success: function(data){
                console.log(data);
                for(var i=0;i<data.contenido.length;i++){
                    offset++;
                    var item = data.contenido[i];
                    var html = '<li class="animated fadeInUp"><span>'+ item.año  +'</span>' +
                            '<h3><a href="'+item.enlace_titulo+'" target=="_blank">' +
                            item.titulo + '</a></h3><p><a href="'+item.enlace_autor+'" target=="_blank"> ' + item.autor + '</a></p></li>'
                    $('#contenido').append(html);
                }                
                //Si no hay contenido para cargar no tiene sentido seguir realizando llamadas AJAX 
                if(data.contenido.length === 0){
                    esperar = true;
                }else{
                    esperar = false;
                }
            }        
        });
    }
}



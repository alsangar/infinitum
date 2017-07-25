var offset = 0;
var num_items = 1;
var distancia_top = 220;
var duracion = 500;

//Cuando se realizan las llamadas AJAX durante el scrolling, no se espera al resultado para lanzar
//la siguiente llamada lo que povoca inconsistencias y saltos en el resultado de las consultas.
//La variable esperar es un semaforo que permite lanzar la siguiente consulta toda
//que se ha recibido el resultado de la anterior
var esperar = false;

$(function(){    
    cargarDatos(4);

});

//Cada vez que se hace scroll hacia abajo se carga un nuevo item. Pare ello se controla
//que ha ocurrido un desplazamiento
$(window).scroll(function(){
    
    if($(window).scrollTop() >= $(document).height()- $(window).height()-100){
        cargarDatos(1);
    }
    
    if($(window).scrollTop() > distancia_top){
        jQuery('.boton-top').fadeIn(duracion);
    }else{
        jQuery('.boton-top').fadeOut(duracion);
    }
});
        
jQuery('.boton-top').click(function(event) {
        event.preventDefault();
        jQuery('html, body').animate({scrollTop: 0}, 500);
        return false;
})

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



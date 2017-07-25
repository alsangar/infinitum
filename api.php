<?php
include ('conn.php');

$resultado = array();

if(isset($_POST) && sizeof($_POST) > 0){
    $resultado['vlimit']=capturaParametro('num_items');
    //offset por defecto debe ser 0; no 1. A ver como lo solucionas usando solo una función y sin anidar ifs
    $resultado['offset']=capturaParametro('offset');
}


try {
    $consulta = $pdo->prepare("SELECT * FROM premios_hugo ORDER BY id_premio ASC LIMIT :limit OFFSET :offset");
    $consulta->bindValue(':limit', $resultado['vlimit'], PDO::PARAM_INT);
    $consulta->bindValue('offset', $resultado['offset'], PDO::PARAM_INT);
    $consulta->execute();

    $resultado['contenido'] = $consulta->fetchAll(PDO::FETCH_ASSOC);
    //$consulta->debugDumpParams();
    print_r(json_encode($resultado));
} catch (PDOException $e) {
    print "¡Error!: " . $e->getMessage() . "<br/>";
    die();
}

//Esta funcion es mejorable controlando el tipo de dato de la variable para realizar la conversión oportuna

function capturaParametro($nombre_variable){
    if(empty($_POST[$nombre_variable])&& $nombre_variable == 'num_items'){
        return 1;
    }else if(empty($_POST[$nombre_variable])&& $nombre_variable == 'offset'){
        return 0;
    }else{
        return (int)filter_input(INPUT_POST,$nombre_variable,FILTER_SANITIZE_NUMBER_INT); 
    }
}
?>

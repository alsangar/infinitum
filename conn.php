<?php

/*defined('DB_HOST') or define('DB_HOST','localhost');
defined('DB_USER') or define('DB_USER','root');
defined('DB_PASS') or define('DB_PASS','');
defined('DB_NAME') or define('DB_NAME','infinitum');*/


try {
    // Local connection
    //$pdo = new PDO('mysql:host='.DB_HOST.';dbname='.DB_NAME.';charset=utf8mb4', DB_USER, DB_PASS);
    
    //Google Cloud Connection
    $pdo = new PDO(getenv('MYSQL_DSN'),getenv('MYSQL_USER'),getenv('MYSQL_PASSWORD'));
    
} catch (PDOException $e) {
    print "¡Error!: " . $e->getMessage() . "<br/>";
    die();
}
?>
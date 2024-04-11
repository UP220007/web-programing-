<?php
header("Access-Control-Allow-Origin: *");
// phpinfo();

// coneccion a la base de datos 
try {
    //code...
    $conn = new PDO(
        "mysql:host=localhost;dbname=todoApp",
        "root",
        ""
    );

    $state = $conn->query("SELECT * FROM user;");
    
    $json = [];

    $jsonString = json_encode($json);
    echo $jsonString;
} catch (PDOException $e) {
    //throw $th;
    echo $e->getMessage();
}



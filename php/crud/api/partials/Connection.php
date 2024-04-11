<?php

$host = "127.0.0.1";
$dbName = "todoApp";
$user = "root";
$password = "";
$protocol = "mysql:host={$host};port=3306;dbname={$dbName}";

try {
  // Generación de la Conexion a la base de datos
  $conn = new PDO($protocol, $user, $password);
} catch (PDOException $e) {
  die($e->getMessage());
}


// CREATE USER 'elalquimista'@'localhost' IDENTIFIED BY 'RoyMusatang';
// GRANT ALL PRIVILEGES ON ** TO 'elalquimista'@'localhost' WITH GRANT OPTION;
// FLUSH PRIVILEGES;
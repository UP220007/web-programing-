<?php
// Conexión a la base de datos
$host = '127.0.0.1';
$dbname = 'crud';
$usuario = 'root';
$contrasena = '';

try {
    $conexion = new PDO("mysql:host=$host;dbname=$dbname", $usuario, $contrasena);
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Consulta para obtener usuarios
    $query = "SELECT * FROM user";
    $statement = $conexion->query($query);
    $usuarios = $statement->fetchAll(PDO::FETCH_ASSOC);

    // Devolver los usuarios como JSON
    header('Content-Type: application/json');
    echo json_encode($usuarios);
} catch(PDOException $e) {
    echo "Error al conectar a la base de datos: " . $e->getMessage();
}
?>

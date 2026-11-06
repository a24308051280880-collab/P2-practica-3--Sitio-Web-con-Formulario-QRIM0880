<?php
$host = "localhost";
$user = "root";
$password = "";
$dbname = "fuggler_db";

$conexion = new mysqli($host, $user, $password, $dbname);

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}
?>
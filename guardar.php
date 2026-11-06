<?php
include 'conexion.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nombre = $_POST['nombre'];
    $correo = $_POST['correo'];
    $direccion = $_POST['direccion'];
    $estado = $_POST['estado'];
    $ciudad = $_POST['ciudad'];

    $stmt = $conexion->prepare("INSERT INTO usuarios (nombre, correo, direccion, estado, ciudad) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss", $nombre, $correo, $direccion, $estado, $ciudad);

    if ($stmt->execute()) {
        echo "<script>
            alert('¡Usuario registrado con éxito!');
            window.location.href = 'cuenta.php';
        </script>";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
    $conexion->close();
}
?>
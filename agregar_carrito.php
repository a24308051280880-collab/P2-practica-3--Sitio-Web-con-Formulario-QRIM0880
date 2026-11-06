<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['id'])) {
    $id = intval($_POST['id']);
    $cantidad = isset($_POST['cantidad']) ? intval($_POST['cantidad']) : 1;

    if (!isset($_SESSION['carrito'])) {
        $_SESSION['carrito'] = array();
    }

    // Si el producto ya está en el carrito, se incrementa la cantidad
    if (isset($_SESSION['carrito'][$id])) {
        $_SESSION['carrito'][$id] += $cantidad;
    } else {
        $_SESSION['carrito'][$id] = $cantidad;
    }
}

// Redireccionar de vuelta a la página del carrito
header("Location: carrito.php");
exit();
?>

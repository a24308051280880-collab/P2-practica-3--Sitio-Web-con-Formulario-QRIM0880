<?php
session_start();
include 'conexion.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_SESSION['carrito']) && !empty($_SESSION['carrito'])) {
    $metodo_pago = htmlspecialchars($_POST['metodo_pago']);
    
    // Contamos cuántos artículos compró en total
    $total_articulos = array_sum($_SESSION['carrito']);

    // Vaciamos el carrito porque la compra ya fue pagada
    unset($_SESSION['carrito']);

    echo "<script>
        alert('¡Pago realizado con éxito!\\nMétodo de pago: $metodo_pago\\nTotal de monstruos adoptados: $total_articulos\\nGracias por comprar en Fuggler Monsters.');
        window.location.href = 'index.php';
    </script>";
    exit();
} else {
    header("Location: carrito.php");
    exit();
}
?>

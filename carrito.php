<?php
session_start();
include 'conexion.php';
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Carrito de Compras - Fuggler Monsters</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <aside class="sidebar">
        <div class="logo">Fuggler</div>
        <div class="tagline">Funny Ugly Monster</div>
        <nav>
            <ul>
                <li><a href="index.php">Inicio</a></li>
                <li><a href="colecciones.php">Colecciones</a></li>
                <li><a href="carrito.php" class="active">Carrito</a></li>
                <li><a href="cuenta.php">Cuenta</a></li>
            </ul>
        </nav>
        <footer>
            <p>Fuggler Monsters. / Quiñones Rios Iris 5-J</p>
        </footer>
    </aside>

    <main class="main-content">
        <h1 class="section-title">Tu Carrito de Compras</h1>
        
        <?php
        if (isset($_SESSION['carrito']) && !empty($_SESSION['carrito'])) {
            $ids = implode(',', array_keys($_SESSION['carrito']));
            $sql = "SELECT * FROM productos WHERE id IN ($ids)";
            $resultado = $conexion->query($sql);

            echo '<div class="container">';
            while ($p = $resultado->fetch_assoc()) {
                $id = $p['id'];
                $cantidad = $_SESSION['carrito'][$id];
                echo '<div class="card">';
                echo '  <img src="' . htmlspecialchars($p['imagen']) . '" alt="' . htmlspecialchars($p['nombre']) . '">';
                echo '  <h2>' . htmlspecialchars($p['nombre']) . '</h2>';
                echo '  <span class="series">' . htmlspecialchars($p['coleccion']) . '</span>';
                echo '  <p class="desc">' . htmlspecialchars($p['descripcion']) . '</p>';
                echo '  <div class="stats">';
                echo '      <div>Cantidad: <span>' . $cantidad . '</span></div>';
                echo '  </div>';
                echo '  <form action="eliminar_carrito.php" method="POST" style="width:100%;">';
                echo '      <input type="hidden" name="id" value="' . $id . '">';
                echo '      <button type="submit" class="btn-buy" style="background:#ff3300; color:#fff;">Eliminar</button>';
                echo '  </form>';
                echo '</div>';
            }
            echo '</div>';
            echo '<form action="vaciar_carrito.php" method="POST">';
            echo '  <button type="submit" class="btn-submit" style="max-width:200px;">Vaciar Carrito</button>';
            echo '</form>';
        } else {
            echo '<div class="intro-box"><p>El carrito está vacío.</p></div>';
        }
        ?>
    </main>
</body>
</html>

<?php
session_start();
include 'conexion.php';

$sql_colecciones = "SELECT DISTINCT coleccion FROM productos";
$res_colecciones = $conexion->query($sql_colecciones);
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Colecciones - Fuggler Monsters</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <aside class="sidebar">
        <div class="logo">Fuggler</div>
        <div class="tagline">Funny Ugly Monster</div>
        <nav>
            <ul>
                <li><a href="index.php">Inicio</a></li>
                <li><a href="colecciones.php" class="active">Colecciones</a></li>
                <li><a href="carrito.php">Carrito</a></li>
                <li><a href="cuenta.php">Cuenta</a></li>
            </ul>
        </nav>
        <footer>
            <p>Fuggler Monsters. / Quiñones Rios Iris 5-J</p>
        </footer>
    </aside>

    <main class="main-content">
        <?php
        if ($res_colecciones->num_rows > 0) {
            while ($col = $res_colecciones->fetch_assoc()) {
                $nombre_col = $col['coleccion'];
                echo '<h1 class="section-title">' . htmlspecialchars($nombre_col) . '</h1>';
                echo '<div class="container">';

                $stmt = $conexion->prepare("SELECT * FROM productos WHERE coleccion = ?");
                $stmt->bind_param("s", $nombre_col);
                $stmt->execute();
                $res_prods = $stmt->get_result();

                while ($p = $res_prods->fetch_assoc()) {
                    echo '<div class="card">';
                    echo '  <img src="' . htmlspecialchars($p['imagen']) . '" alt="' . htmlspecialchars($p['nombre']) . '">';
                    echo '  <h2>' . htmlspecialchars($p['nombre']) . '</h2>';
                    echo '  <span class="series">' . htmlspecialchars($p['coleccion']) . '</span>';
                    echo '  <p class="desc">' . htmlspecialchars($p['descripcion']) . '</p>';
                    echo '  <div class="stats">';
                    echo '      <div>Numero: <span>' . htmlspecialchars($p['numero']) . '</span></div>';
                    echo '      <div>Pelaje: <span>' . htmlspecialchars($p['pelaje']) . '</span></div>';
                    echo '      <div>Velocidad del pedo: <span>' . htmlspecialchars($p['pedo']) . '</span></div>';
                    echo '      <div>Consistencia de flema: <span>' . htmlspecialchars($p['flema']) . '</span></div>';
                    echo '  </div>';
                    echo '  <form action="agregar_carrito.php" method="POST" style="width:100%;">';
                    echo '      <input type="hidden" name="id" value="' . $p['id'] . '">';
                    echo '      <button type="submit" class="btn-buy" style="cursor:pointer;">Agregar al Carrito</button>';
                    echo '  </form>';
                    echo '</div>';
                }
                echo '</div>';
            }
        }
        ?>
    </main>
</body>
</html>

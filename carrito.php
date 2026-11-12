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
                echo '      <button type="submit" class="btn-buy" style="background:#ff3300; color:#fff; cursor:pointer;">Eliminar</button>';
                echo '  </form>';
                echo '</div>';
            }
            echo '</div>';
            ?>

            <!-- SECCIÓN DE MÉTODO DE PAGO Y BOTÓN DE PAGAR -->
            <div class="form-container" style="margin-top: 20px;">
                <h2 style="font-family: Impact, sans-serif; color: #ffee00; margin-bottom: 15px; font-size: 1.8rem;">Finalizar Compra</h2>
                <form action="procesar_pago.php" method="POST">
                    <div class="form-group">
                        <label for="metodo_pago">Selecciona tu Método de Pago:</label>
                        <select id="metodo_pago" name="metodo_pago" required onchange="mostrarDetallesPago()">
                            <option value="">-- Elige una opción --</option>
                            <option value="Tarjeta de Crédito / Débito">Tarjeta de Crédito / Débito</option>
                            <option value="PayPal">PayPal</option>
                            <option value="Transferencia Bancaria">Transferencia Bancaria (SPEI)</option>
                            <option value="Pago en OXXO">Pago en Efectivo (OXXO)</option>
                        </select>
                    </div>

                    <!-- Campos adicionales dinámicos si elige tarjeta -->
                    <div id="datos_tarjeta" style="display: none;">
                        <div class="form-group">
                            <label for="num_tarjeta">Número de Tarjeta:</label>
                            <input type="text" id="num_tarjeta" name="num_tarjeta" placeholder="0000 0000 0000 0000" maxlength="19">
                        </div>
                        <div class="form-group" style="display: flex; gap: 10px;">
                            <div style="flex: 1;">
                                <label for="expiracion">Expiración:</label>
                                <input type="text" id="expiracion" name="expiracion" placeholder="MM/AA" maxlength="5">
                            </div>
                            <div style="flex: 1;">
                                <label for="cvv">CVV:</label>
                                <input type="text" id="cvv" name="cvv" placeholder="123" maxlength="4">
                            </div>
                        </div>
                    </div>

                    <button type="submit" class="btn-submit" style="background: #28a745; margin-bottom: 15px;">Pagar Ahora</button>
                </form>

                <form action="vaciar_carrito.php" method="POST">
                    <button type="submit" class="btn-submit" style="background: #555; font-size: 1rem;">Vaciar Carrito</button>
                </form>
            </div>

            <script>
                function mostrarDetallesPago() {
                    const metodo = document.getElementById('metodo_pago').value;
                    const divTarjeta = document.getElementById('datos_tarjeta');
                    const inputsTarjeta = divTarjeta.querySelectorAll('input');

                    if (metodo === 'Tarjeta de Crédito / Débito') {
                        divTarjeta.style.display = 'block';
                        inputsTarjeta.forEach(input => input.required = true);
                    } else {
                        divTarjeta.style.display = 'none';
                        inputsTarjeta.forEach(input => input.required = false);
                    }
                }
            </script>

        <?php
        } else {
            echo '<div class="intro-box"><p>El carrito está vacío. ¡Ve a <a href="colecciones.php" style="color:#ffee00;">Colecciones</a> para adoptar un Fuggler!</p></div>';
        }
        ?>
    </main>
</body>
</html>

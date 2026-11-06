<?php
include 'conexion.php';
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Cuenta - Fuggler Monsters</title>
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
                <li><a href="carrito.php">Carrito</a></li>
                <li><a href="cuenta.php">Cuenta</a></li>
            </ul>
        </nav>
        <footer>
            <p>Fuggler Monsters. / Quiñones Rios Iris 5-J</p>
        </footer>
    </aside>

    <main class="main-content">
        <h1 class="section-title">Acceso a la Cuenta</h1>
        <div class="form-container">
            <form action="guardar.php" method="POST">
                <div class="form-group">
                    <label for="nombre">Nombre Completo:</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>
                <div class="form-group">
                    <label for="correo">Correo Electrónico:</label>
                    <input type="email" id="correo" name="correo" required>
                </div>
                <div class="form-group">
                    <label for="direccion">Dirección de Envío:</label>
                    <input type="text" id="direccion" name="direccion" required>
                </div>
                <div class="form-group">
                    <label for="estado">Estado (México):</label>
                    <select id="estado" name="estado" required>
                        <option value="">Selecciona un estado</option>
                        <option value="Chihuahua">Chihuahua</option>
                        <option value="Ciudad de México">Ciudad de México</option>
                        <option value="Jalisco">Jalisco</option>
                        <option value="Nuevo León">Nuevo León</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="ciudad">Ciudad:</label>
                    <input type="text" id="ciudad" name="ciudad" required>
                </div>
                <button type="submit" class="btn-submit">Crear Cuenta / Iniciar Sesión</button>
            </form>
        </div>
    </main>
</body>
</html>

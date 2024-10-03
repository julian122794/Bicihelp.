<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
    <link rel="stylesheet" href="../CSS/Styles.css">
</head>
<body>
    <div class="login-container">
        <h2>Registro usuarios</h2>
        <form action="#" method="post">
            <div class="input-group">
                <label for="username">Nombres</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="email">Apellidos</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="input-group">
                <label for="email">Correo Electrónico</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div>
                <select class="docm">
                    <option value = "1">cedula de ciudadania</option>
                    <option value = "1">cedula de extranjeria</option>
                    <option value = "1">tarjeta identidad</option>
                    <option value = "1">pasaporte</option>
                    <option value = "1">NIT</option>
                </select></br></br>
            </div>
              
            <div class="input-group">
                <label for="email">Telefono</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="input-group">
                <label for="email">Ciudad</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="input-group">
                <label for="password">Contraseña</label>
                <input type="password" id="password" name="password" required>
                <span class="eye-icon">&#128065;</span>
            </div>
            <div class="input-group">
                <label for="confirm-password">Confirmar Contraseña</label>
                <input type="password" id="confirm-password" name="confirm-password" required>
                <span class="eye-icon">&#128065;</span>
            </div>
            <button type="submit">Registrarse</button>
        </form>
    </div>
    <footer>
        <p>&copy; 2024 BiciHelp. Todos los derechos reservados.</p>
    </footer>
</body>
</html>
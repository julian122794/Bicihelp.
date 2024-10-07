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
        <h2>Registro contratistas.</h2>
        <form action="#" method="post">
            <div class="input-group">
                <label for="username">Nombres</label>
                <input type="text" id="username" name="nombres" required>
            </div>
            <div class="input-group">
                <label for="email">Apellidos</label>
                <input type="text" id="lastname" name="apellidos" required/>
            </div>
            <div class="input-group">
                <label for="email">fecha de nacimiento</label>
                <input type="date" name="fecha_nacimiento" />
            </div>

            <div class="input-group">
                <label for="email">Correo Electrónico</label>
                <input type="email" id="email" name="correo_electronico" required>
            </div>
            <div>
                <select class="docm" name="cedula_ciudadania">
                    <option value = "1">cedula de ciudadania</option>
                    <option value = "1">cedula de extranjeria</option>
                    <option value = "1">tarjeta identidad</option>
                    <option value = "1">pasaporte</option>
                    <option value = "1">NIT</option>
                </select></br></br>
            </div>
            <div>
                <select class="docm" name="tipo_servicio">

                    <option value = "1">tipo de servicio</option>
                    <option value = "1">tècnico en electricidad</option>
                    <option value = "1">Tècnico en reparaciòn</option>
                    <option value = "1">Repuestos</option>
                    
                </select></br></br>
            </div>
              
            <div class="input-group">
                <label for="telefono">Telefono</label>
                <input type="text" id="telephone" name="telefono" required>
            </div>
            <div class="input-group">
                <label for="ciudad">Ciudad</label>
                <input type="text" id="city" name="ciudad" required>
            </div>
            <div class="input-group">
                <label for="password">Contraseña</label>
                <input type="password" id="password" name="contrasena" required>
                <span class="eye-icon">&#128065;</span>
            </div>
            <div class="input-group">
                <label for="confirm-password">Confirmar Contraseña</label>
                <input type="password" id="confirm-password" name="confirm-password" required>
                <span class="eye-icon">&#128065;</span>
            </div>
            <button type="submit" name="registro">Registrarse</button>
        </form>
    </div>
    <?php

include("footer.php")
?>
</body>
</html>

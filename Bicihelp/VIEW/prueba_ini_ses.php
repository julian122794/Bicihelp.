<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio Sesion - con email</title>
    <link rel="stylesheet" href="../CSS/Styles.css">
</head>

<body>

    <header>
        <div class = "logo">
            <img src="../img/logo_sinborde.jpg" widht="125" height="125" alt="25">
            <h1 class="title"> Inicio Sesion Bici Help</h1>
        </div>
    </header>
    
        <div class="login-container">
            <h2>Inicio de Sesión con email</h2>
            <form action="../VIEW/prueba_login.php" method="POST">
                <div class="input-group">
                    <label for="username">Usuario:</label>
                    <input type="text" id="username" name="username" required>
                    <br>
                </div>

                <div class="input-group">
                    <label for="password">Contraseña:</label>
                    <input type="password" id="password" name="password" required>
                    <span class="eye-icon">&#128065;</span>
                    <br>
                </div>
                
                <input type="submit" value="Iniciar Sesión">
                
            
            </form>
        </div>
    <?php

        include("footer.php")
    ?>
</body>
</html>
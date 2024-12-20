
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de Sesión</title>
    <link rel="stylesheet" href="../CSS/Styles.css">
</head>

<body>   
    <header>
        <div class = "logo">
            <img src="../IMG/logo.jpg" width="150" height="150" alt="25">
        <h1 class="title">Bienvenido a BiciHelp</h1>
        </div>
       
    </header> 
    <div class="login-container">
        <h2>Inicio de Sesión</h2>
      <form action="../CONTROLER/ingreso.php" method="post">
            <div class="input-group">
                <label for="username">Usuario</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Contraseña</label>
                <input type="password" id="password" name="password" required>
                <span class="eye-icon">&#128065;</span>
            </div>
            <a href="../VIEW/recuperarcontraseña.php">¿olvidaste tu contraseña?</a>  </br></br>
            <button type="submit">Iniciar Sesión</button>
            <br></br>
            <button type="submit">Iniciar con GOOGLE</button>
            <br></br>
            <button type="submit">Iniciar con IOS </button></br></br>
            
            <div>
            <button type="text" href="../VIEW/Inicio.php">volver</button>
            </div>
        </form>
    </div>
    <?php

include("footer.php")
?>
</body>
</html>

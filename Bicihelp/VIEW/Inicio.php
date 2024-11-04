<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BiciHelp - Inicio</title>
    <link rel="stylesheet" href="../CSS/Inicio.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    
    <header>
    <img src="../IMG/logo.jpg" width="130" height="160" alt="25">
        <div class = "logo">
         
        <h1>Bienvenido a BiciHelp</h1>
        </div>
    </header>
    <nav>
        <ul>
            <li><a href="../VIEW/Inicio.php">Inicio</a></li>
            <li><a href="../VIEW/Nosotros.php">Quienes somos</a></li>
            <li><a href="../VIEW/contactenos.php">Contactenos</a></li>
            <li><a href="../VIEW/Servicios.php">servicios</a></li>
            <li><a href="../VIEW/Registro_contratista.php">Registrarse</a></li>
            <li><a href="../VIEW/Inicio_sesion.php">Inicio de sesion</a></li>
            <li><a href="../VIEW/chat.php">Chat</a></li>
        </ul>
    </nav>

    <main class ="principal">
        
        <section>
            <h2>Nuestros Servicios</h2>
            <p class="texto">En BiciHelp, ofrecemos una amplia gama de servicios para ciclistas,</br> desde mantenimiento hasta asistencia en ruta.</p>
        
            <h2>¿Por qué elegirnos?</h2>
            <p class="texto" >Contamos con un equipo de profesionales dedicados a brindar el mejor </br>servicio para mantener tu bicicleta en óptimas condiciones.</p>
        </section>

        <div class="login-container">
       
         <form>
         <img src="../IMG/user-solid-72.png" width="72px"></br>
            <a href="../VIEW/Registro_usuarios.php" target="_blank">
                <button type="button">Registrar Usuario</button>
            </a>
            <br /><br />
           <img src="../IMG/wrench-solid-72.png" ></br>

            <a href="../VIEW/Registro_contratista.php" target="_blank">
                <button type="button">Registrar Contratista</button>
            </a>

        </form>
    </div>
    </main>

    <?php

include("footer.php")
?>
</body>
</html>

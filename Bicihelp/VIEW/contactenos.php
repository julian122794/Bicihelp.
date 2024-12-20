
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contactenos</title>
    <link rel="stylesheet" href="../CSS/contactenos.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>

    <header>
    <img src="../IMG/logo.jpg" width="130" height="160" alt="25">
        <div class="logo">
           
            <h1>Contactenos</h1>
        </div>
    </header>
    <nav>
        <ul>
            <li><a href="../VIEW/Inicio.php">Inicio</a></li>
            <li><a href="../VIEW/Nosotros.php">Quienes somos</a></li>
            <li><a href="../VIEW/contactenos.php">Contactenos</a></li>
            <li><a href="../VIEW/Servicios.php">servicios</a></li>
            <li><a href="../VIEW/Registro_contratista.php">Registrarse</a></li>
            <li><a href="../VIEW/Inicio_sesion.php">Inicio de sesión</a></li>
            <li><a href="../VIEW/chat.php">Chat</a></li>
        </ul>
    </nav>
    <div class="container-form">
        <div class="info-form">
            <h2>coctactenos</h2>
            <p>¡Bienvenido a nuestro Taller de Bicicletas! Si tienes alguna pregunta, necesitas más información sobre nuestros</br>servicios o quieres agendar una cita,
                estamos aquí para ayudarte. Nos apasiona mantener tu bicicleta en perfectas condiciones,</br> ya sea para reparaciones, mantenimiento o personalización.
                Puedes contactarnos a través del formulario a continuación,</br> llamarnos por teléfono o visitarnos directamente en nuestro taller.
                ¡Estamos listos para ofrecerte un servicio rápido</br> y de calidad, para que sigas pedaleando sin preocupaciones!</p></br></br></br>

            <i class='bx bxs-phone'>3165338316</i>
            <i class='bx bxs-envelope'>bicihelp@outlook.com</i>
            <i class='bx bxs-map'>ciudad,pais</i>
        </div>
        <form action="#" autocomplete="off">
            <p class="subtitle">Nombre completo</p>
            <input type="text" name="nombre"
                placeholder="ingrese   su nombre" class="campo"></br></br>
            <p class="subtitle">Correo electronico</p>
            <input type="email" name="email"
                placeholder="ingrese su correo" class="campo"></br></br>
            <p class="subtitle">Quejas o sugerencias</p>
            <textarea name="mensaje"
                placeholder="ingrese su mensaje">
        </textarea>
            <button type="submit" name="enviar" value="enviar mensaje">enviar mensaje</button>

        </form>
    </div>

</body>
<?php

include("footer.php")
?>

</html>

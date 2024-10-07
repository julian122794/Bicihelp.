
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>coctactenos</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="../CSS/contactenos.css">
</head>
<body>
    <header>
        <div class = "logo">
            <img src="../IMG/logo.jpg" width="150" height="150" alt="25">
        <h1 class="title">Bienvenido a BiciHelp</h1>
        </div>
       
    </header>
    <div class="container-form">
        <div class="info-form">
            <h2>coctactenos</h2>
            <p>¡Bienvenido a nuestro Taller de Bicicletas! Si tienes alguna pregunta, necesitas más información sobre nuestros</br>servicios o quieres agendar una cita, 
                estamos aquí para ayudarte. Nos apasiona mantener tu bicicleta en perfectas condiciones,</br> ya sea para reparaciones, mantenimiento o personalización.
                Puedes contactarnos a través del formulario a continuación,</br> llamarnos por teléfono o visitarnos directamente en nuestro taller. 
               ¡Estamos listos para ofrecerte un servicio rápido</br> y de calidad, para que sigas pedaleando sin preocupaciones!</p></br></br></br>
              
               <i class='bx bxs-phone'>3165338316</i>
               <i class='bx bxs-envelope'>bicihelp@outlook.com</i>
               <i class='bx bxs-map' >ciudad,pais</i>
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
        <input type="submit" name="enviar" value="enviar mensaje" class="btn-enviar">

       </form>
    </div>
    <?php

include("footer.php")
?>
</body>
</html>
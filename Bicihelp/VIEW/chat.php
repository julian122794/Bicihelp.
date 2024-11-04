<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat </title>
    <link rel="stylesheet" href="../CSS/chat.css">
</head>

<body>

    <header>
    <img src="../IMG/logo.jpg" width="130" height="160" alt="25">
        <div class="logo">
            
            <h1>Chat</h1>
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
    <div class="chat-container">
        <div class="chat-box" id="chat-box">
            <!-- Los mensajes aparecerán aquí -->
        </div>
        <div class="input-box">
            <input type="text" id="message-input" placeholder="Escribe tu mensaje...">
            <button onclick="sendMessage()">Enviar</button>
        </div>
    </div>

    <script src="../j.s/chat.js"></script>

    <?php

<?php
// Iniciar la sesión
session_start();

// clave y usuario de prueba
$usuario_correcto = "Julian";
$password_correcta = "0003";

// verificacion de formulario.
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // registro de datos 
    $usuario = $_POST['username'];
    $password = $_POST['password'];

    // Validar credenciales
    if ($usuario === $usuario_correcto && $password === $password_correcta) {
        // Credenciales correctas, iniciar sesión
        $_SESSION['usuario'] = $usuario;
        echo "Inicio de sesión exitoso. Bienvenido, " . $usuario;
        // Aquí puedes redirigir a otra página:
        // header("Location: dashboard.php");
    } else {
        // Credenciales incorrectas
        echo "Usuario o contraseña incorrectos.";
    }
}
?>
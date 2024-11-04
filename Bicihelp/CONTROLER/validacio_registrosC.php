<?php
// Verificar si el formulario ha sido enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Capturar los valores del formulario
    $username = isset($_POST['username']) ? trim($_POST['username']) : '';
    $apellidos = isset($_POST['apellidos']) ? trim($_POST['apellidos']) : '';
    $bday = isset($_POST['bday']) ? trim($_POST['bday']) : '';
    $email = isset($_POST['email']) ? trim($_POST['email']) : '';
    $telefono = isset($_POST['telefono']) ? trim($_POST['telefono']) : '';
    $ciudad = isset($_POST['ciudad']) ? trim($_POST['ciudad']) : '';
    $password = isset($_POST['password']) ? trim($_POST['password']) : '';
    $confirm_password = isset($_POST['confirm-password']) ? trim($_POST['confirm-password']) : '';
    
    // Verificar si algún campo obligatorio está vacío
    if (empty($username) || empty($apellidos) || empty($bday) || empty($email) || empty($telefono) || empty($ciudad) || empty($password) || empty($confirm_password)) {
        echo "<p style='color: red;'>Faltan campos por llenar. Por favor completa todos los campos.</p>";
    } elseif ($password !== $confirm_password) {
        echo "<p style='color: red;'>Las contraseñas no coinciden. Por favor, verifica e intenta nuevamente.</p>";
    } else {
        // Si todo está completo
        echo "<p style='color: green;'>¡Registro exitoso! Todos los campos se llenaron correctamente.</p>";
    }
}
?>
<?php
session_start(); // Iniciar la sesión para guardar datos del usuario

// Conexión a la base de datos
$servername = "localhost";
$username = "root"; // Usuario de MySQL
$password = ""; // Contraseña de MySQL
$dbname = "usuarios"; // Base de datos

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Verificar si los datos fueron enviados
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Consulta preparada para evitar SQL Injection
    $stmt = $conn->prepare("SELECT * FROM users WHERE username = ? AND password = MD5(?)");
    $stmt->bind_param("ss", $username, $password);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        // Iniciar sesión si el usuario es encontrado
        $_SESSION['username'] = $username; // Guardar el nombre de usuario en la sesión
        header("Location: profile.php"); // Redirigir a la página de perfil
        exit(); // Asegurar que el script se detenga aquí
    } else {
        echo "Usuario o contraseña incorrectos.";
    }

    $stmt->close();
}

$conn->close();
?>
<?php
// Conexión a la base de datos
$servername = "localhost";
$username = "root"; // Ajusta el nombre de usuario de tu base de datos
$password = ""; // Ajusta la contraseña de tu base de datos
$dbname = "bicihelp";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Procesar el formulario cuando se envía
if (isset($_POST['registro'])) {
    $nombres = $_POST['nombres'];
    $apellidos = $_POST['apellidos'];
    $fecha_nacimiento = $_POST['fecha_nacimiento'];
    $correo_electronico = $_POST['correo_electronico'];
    $cedula_ciudadania = $_POST['cedula_ciudadania'];
    $tipo_servicio = $_POST['tipo_servicio'];
    $telefono = $_POST['telefono'];
    $ciudad = $_POST['ciudad'];
    $contrasena = password_hash($_POST['contrasena'], PASSWORD_DEFAULT); // Encriptar la contraseña

    // Insertar datos en la base de datos
    $sql = "INSERT INTO registro (nombres, apellidos, fecha_nacimiento, correo_electronico, cedula_ciudadania, tipo_servicio, telefono, ciudad, contrasena)
            VALUES ('$nombres', '$apellidos', '$fecha_nacimiento', '$correo_electronico', '$cedula_ciudadania', '$tipo_servicio', '$telefono', '$ciudad', '$contrasena')";

    if ($conn->query($sql) === TRUE) {
        echo "Registro exitoso.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Cerrar la conexión
$conn->close();
?>
<?php
/*session_start();*/
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bici_help";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) 
    {
        die("Conexión fallida: " . $conn->connect_error);
    }
else
    {
        echo "Conexion bd exitosa";
    }

if ($_SERVER["REQUEST_METHOD"] == "POST")
     {
        $user = $_POST['username'];
        $pass = $_POST['password'];

        // Consulta para verificar usuario y contraseña
        $sql = "SELECT * FROM usuarios WHERE correo_electronico = '$user'";
        $result = $conn->query($sql);

        if ($result->num_rows > 0)
            {
                /* VALIDACION CONTENIDO VARIABLE $pass
                print "<br>";
                echo "Valor pass: " . $pass; */
                
                $row = $result->fetch_assoc();
                /* VALIDACION CONTENIDO VARIABLE $row['contrasena']
                print "<br>";
                echo "Valor row: " . $row['contrasena']; */

               /* if (password_verify($pass,$row['contrasena']))*/ 
                if($pass == $row['contrasena'])
                    {
                        $_SESSION['correo_electronico'] = $user;
                        /*echo "Inicio de sesión exitoso. Bienvenido, " . $user . "!";*/
                        header("Location: Perfil_usuario.php");
                    }
                else 
                    {
                        print "<br>";
                        echo "Contraseña incorrecta.";
                    }
            } 
        else 
            {
                echo "Usuario no encontrado.";
            }
    }   

$conn->close();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="../C.S.S/perfil.css">
</head>
<header>
    <div class = "logo">
        <img src="C:\xampp\htdocs\Bicihelp\IMG\logo.jpg" width="150" height="200" alt="25">
    <h1>Bienvenido a BiciHelp</h1>
    </div>
</header>
<nav>
    <ul>
        <li><a href="Inicio.html">Inicio</a></li>
        <li><a href="Nosotros.html">Quienes somos</a></li>
        <li><a href="#">Contactenos</a></li>
        <li><a href="Servicios.html">servicios</a></li>
        <li><a href="Registro_usuarios.html">Registrarse</a></li>
        <li><a href="Inicio_sesion.html">Inicio de sesion</a></li>
        <li><a href="#">Chat</a></li>
    </ul>
</nav>
<main>
<body>
    <div class="container">
        <!-- Profile Card -->
        <div class="profile-card">
            <div class="profile-image">
                <img src="https://via.placeholder.com/150" alt="Profile Picture">
            </div>
            <h2>jorge</h2>
            <p>jorge</p>
            <button class="upload-btn">Upload New Photo</button>
            <p class="instructions">Upload a new avatar. Larger images will be resized automatically.<br> Maximum upload size is 1 MB.</p>
            <p class="member-since">Member Since: 20 diciembre 2021</p>
        </div>

        <!-- Edit Profile Form -->
        <div class="edit-profile">
            <h2>Editar perfil usuario </h2>
            <form action="#">
                <div class="form-group">
                    <label for="full-name">Nombre completo</label>
                    <input type="text" id="full-name" placeholder="Jorge">
                </div>
                <div class="form-group">
                    <label for="username">Usuario</label>
                    <input type="text" id="username" placeholder="herrera">
                </div>
                <div class="form-group">
                    <label for="password">Contraseña </label>
                    <input type="password" id="password" placeholder="********">
                </div>
                <div class="form-group">
                    <label for="confirm-password">Confirmar contraseña</label>
                    <input type="password" id="confirm-password" placeholder="********">
                </div>
                <div class="form-group">
                    <label for="email">Correo electronico</label>
                    <input type="email" id="email" placeholder="demo@mail.com">
                </div>
                <div class="form-group">
                    <label for="confirm-email">Confrimar correo electronico</label>
                    <input type="email" id="confirm-email" placeholder="demo@mail.com">
                </div>
                <h3>Social Profile</h3>
                <div class="form-group">
                    <label for="facebook">Facebook </label>
                    <input type="text" id="facebook" placeholder="Facebook Username">
                </div>
                <div class="form-group">
                    <label for="twitter">Twitter</label>
                    <input type="text" id="twitter" placeholder="Twitter Username">
                </div>
                <button type="submit" class="update-btn">Update Info</button>
            </form>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 BiciHelp. Todos los derechos reservados.</p>
    </footer>
</body>
</html>
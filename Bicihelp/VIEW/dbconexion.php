<?php
 $servername = "localhost";
 $user = "root";
 $pass = "";
 $db = "bici_help";

 $dbconexion = new mysqli($servername, $user, $pass, $db);

 if($dbconexion->errno){
    die("conexion fallida" . $dbconexion->connect_errno);
 }
 else{
    echo "conectado";
 }
 

?>

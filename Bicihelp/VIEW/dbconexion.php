<?php
 /*$servername = "localhost";
 $user = "root";
 $pass = "";
 $db = "bici_help";

 $dbconexion = new mysqli($servername, $user, $pass, $db);

 if($dbconexion->errno){
    die("conexion fallida" . $dbconexion->connect_errno);
 }
 else{
    echo "conectado";
 }*/
$servername = "localhost";
 $user = "root";
 $pass = "";
 $db = "bici_help";

 try{
   $dbconexion =new PDO ("mysql:host=$servername;db=bici_help",$user,$pass);

   $dbconexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   echo "conectado con exito";


 }catch(PDOException $e) {
   echo "fallo la conexion:" . $e->getMenssage();

 }
 

?>

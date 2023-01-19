<?php
$host = "localhost";
$database = "bbdddnaomy";
$user = "dnaomy";
$password = "12345678";
$conexion = mysqli_connect($host, $user, $password,$database);

if (!$conexion) die("No ha podido realizarse la conexión".mysqli_connect_error());
else echo "Conexion correcta";
 //cierra la BBDD
?>
<?php
include_once('conexBD.php');
//error_reporting(E_ALL ^ E_NOTICE);
if (isset($_POST['enviat'])) $sele=$_POST['enviat'];
else $sele="0";
?>
<!DOCTYPE HTML>
<html LANG="es"><head><meta charset="UTF-8"><title>Insertar Usuario</title></head>

<body>
<?php
if ($sele=="0") 
{	
?>
<form action="insertar_usuario.php" method="post" name="formu">
    <table border="1">
        <tr>
            <td>nombre: </td><td><input name="nom" type="text" value="" required/></td>
        </tr>
        <tr>
            <td>Correo:</td><td><input name="correo" type="text"  value="" required></td>
        </tr>
        <tr>
            <td>Contraseña:</td><td><input name="contrasenya" type="password"  required/></td>
        </tr>
        <tr>
            <td>Tipo:</td><td><input name="tipo" type="text"  required/></td>
        </tr>
        <tr>
            <td>DNI:</td><td><input name="dni" type="text"  minlength=8 maxlength=9 required/></td>
        </tr>
        <tr>
            <td>CP:</td><td><input name="cp" type="text" /></td>
        </tr>
        <tr>
            <td>Telefono:</td><td><input name="telefono" type="number" /></td>
        </tr>
    </table>
    <input name="enviat" type="hidden" value="1" />
    <input name="Enviar" type="submit" value="inserir" />
    <input name="Enviar" type="reset" value="reset" />
</form>
<?php 
} 
else 
{

 

if (isset($_POST['nom'])) 
    $sql="INSERT INTO tusuario(numero_telefono,codigo_postal,nom_usuario,contrasenya,tipo,DNI,correo) VALUES ('".$_POST['telefono']."',".$_POST['cp'].",'".$_POST['nom']."','".$_POST['contrasenya']."','".$_POST['tipo']."','".$_POST['dni']."','".$_POST['correo']."');";

    echo "<br>".$sql."<br>";
    $resultado = mysqli_query($conexion, $sql);
    echo "<br>LLISTAT<br>";
    echo "<h1><a href='consultar.php'>consultar</a></h1>";
}
mysqli_close($conexion);
?>
</body>
</html>
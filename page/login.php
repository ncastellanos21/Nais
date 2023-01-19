<?php
    error_reporting(0);
    include_once('conexBD.php');
    $usuaric = $_POST["username"];
    $passc = $_POST["password"];
    //if (isset($_POST['enviat'])) $sele=$_POST['enviat'];
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UFT-8">
    <meta http-equiv="X-UA-Compatible" content="width=device-width,
    initial-scale=1.0">
    <title>LOG IN</title>
    <link rel="shorcut icon" type="image/png" href="img/favicon.png">

    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" 
    integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" 
    crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>
<?php
    $sql="SELECT nom_usuario,contrasenya FROM talumno WHERE nom_usuario ='".$usuaric."'  AND contrasenya ='".$passc."';" //Selecciona todo de la tabla usuarios
    $resultado = mysqli_query($conexion, $sql); //Guardar la consulta sql
    if (mysqli_num_rows($resultado) != 0) { //si tengo más de 0 filas ...
?>
    <form id="formulario" method="post">
        <h1 class="title">Log in</h1>
        <label for="username">  
            <i class="fa-solid fa-user"></i>
            <input placeholder="username" type="text" id="username">
        </label>
        <label>
            <i class="fa-solid fa-lock"></i>
            <input placeholder="password" type="password" id="password">
        </label>
        <a href="form_password.html" class="link">Forgot your password?</a>
        <a href="form.html" class="link">Register</a>
        <a href="index.html" class="link">Turn back to HOME</a>
        <!--<input class="btn" name="enviat" type="hidden" value="1"/>-->
        <input class="button" type="submit" name="Log In" value="Log In"></input>
        <br>

    </form>
<?php
    } else echo "0 filas";
?>


    <script src="login.js"></script>
</body>
</html>
<?php
require "conn.php";
$user_name = $_POST["user_name"];
$user_pass = $_POST["password"];
$mysql_qry = "SELECT * FROM `usuarios` where Username like '$user_name' and Password like '$user_pass';";
$result = mysqli_query($conn ,$mysql_qry);
if(mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    $name = $row["Name"];
	echo "Bienvenido!";
}
else {
echo "Nombre de usuario o contraseña incorrectos.";
}
?>
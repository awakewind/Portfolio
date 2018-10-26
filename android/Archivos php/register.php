<?php
require "conn.php";
$nombre = $_POST["nombre"];
$user_name = $_POST["user_name"];
$user_pass = $_POST["password"];
$mysql_qry = "insert into usuarios(	Name, Password, Username) values ('$nombre', '$user_pass', '$user_name')";
if($conn->query($mysql_qry) === TRUE) {
	echo "Usuario Registrado";
}
else {
echo "Error: " .$mysql_qry . "<br>" . $conn->error;
}
$conn->close();
?>
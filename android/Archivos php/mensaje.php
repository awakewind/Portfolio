<?php
require "conn.php";
$mensaje = $_POST["mensaje"];
$destino = $_POST["destino"];
$remitente = $_POST["remitente"];
$remitenteid = 0;
$mysql_qry_msg = "SELECT * FROM `usuarios` where Username like '$remitente';";
$result = mysqli_query($conn ,$mysql_qry_msg);
if(mysqli_num_rows($result) > 0)  {
    $row = mysqli_fetch_assoc($result);
	$remitenteid =$row["IdUsuario"];
}
else {
echo "No está registrado";
}
$mysql_qry = "insert into mensajes(	textMensaje, remitente, destinatario) values ('$mensaje', '$remitenteid', '$destino')";
if($conn->query($mysql_qry) === TRUE) {
	echo "Mensaje enviado";
}
else {
echo "Error: " .$mysql_qry . "<br>" . $conn->error;
}
$conn->close();
?>
<?php
require "conn.php";
$remitente = $_POST["remitente"];
$mysql_qry_msg = "SELECT * FROM `mensajes` where destinatario like '$remitente';";
$result = mysqli_query($conn ,$mysql_qry_msg);
$rray = array();
$Mensajes = "well";
$index = 0;
if(mysqli_num_rows($result) > 0) {
	$row = mysqli_fetch_assoc($result);
	$mysql_qry = "SELECT * FROM `mensajes` where destinatario like '$remitente';";
$result2 = mysqli_query($conn ,$mysql_qry);
if(mysqli_num_rows($result2) > 0) {
while($row = mysqli_fetch_array($result2)){ 
    $message[] = $row;
}
print(json_encode($message));
}
else {
echo '[{"0":"2","idMensaje":"2","1":"No tiene mensajes","textMensaje":"No tiene mensajes","2":"0","remitente":"0","3":"pepe","destinatario":"pepe"}]';
}
}
else {
echo '[{"0":"2","idMensaje":"2","1":"No tiene mensajes","textMensaje":"No tiene mensajes","2":"0","remitente":"0","3":"pepe","destinatario":"pepe"}]';
}
$conn->close();
?>
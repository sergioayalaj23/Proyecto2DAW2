<?php 
	include('login.php');
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>¡Reserva tu recurso!</title>
		<link rel="stylesheet" type="text/css" href="css/style4.css">
	</head>
<body>
	<?php
		$con = mysqli_connect('localhost', 'root', '', 'bd_recursos');
		$sql = "UPDATE `tbl_recurso` SET estado ='disponible', id_usuario = NULL WHERE `id_recurso` = $_REQUEST[id]";
		$datos = mysqli_query($con,$sql);

		if(mysqli_affected_rows($con)==1){
	?>
		<p>Su recurso se ha liberado correctamente. Muchas gracias</p>
		<p>Click aquí para volver: <a href="misarticulos.php" class="enlaceboton">Volver a mis productos</a></p>
	<?php	
		} elseif(mysqli_affected_rows($con)==0){
			echo "No se ha podido liberar el producto";
		} else {
			echo "Error inesperado";
		}
	?>
		<a href="perfil.php">Volver al Perfil</a>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>¡Reserva tu recurso!</title>
	<link rel="stylesheet" type="text/css" href="css/style4.css">
	<link rel="stylesheet" type="text/css" href="css/style5.css">
</head>
	<body>
		<div id="wrapper">
		<?php
			$con = mysqli_connect('localhost','root','','bd_recursos');
			include('login.php');
			
			$sql = "UPDATE tbl_recurso SET estado='No disponible', id_usuario = $_SESSION[login_user] , ultima_reserva = now(), veces_usado=veces_usado + 1 WHERE id_recurso=$_REQUEST[id]";
				
			$datos = mysqli_query($con, $sql);
			
			if(mysqli_affected_rows($con)==1){
		?>
			<p>Su recurso se ha reservado correctamente</p>
		<?php	
			} elseif(mysqli_affected_rows($con)==0){
				echo "<p>No se ha podido reservar el producto</p>";
			} else {
				echo "<p>Error inesperado</p>";
			}
			mysqli_close($con);
		?>
		<p><a href="perfil.php" class="enlaceboton">Panel de usuario</a></p>
		</div>
	</body>
</html>
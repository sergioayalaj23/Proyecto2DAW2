<?php 
	include('login.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>¡Reserva tu recurso!</title>
	<link rel="stylesheet" type="text/css" href="css/style4.css">
</head>
	<body>
		<div id="wrapper">
			<?php
				//realizamos la conexión con mysql
				$con = mysqli_connect('localhost', 'root', '', 'bd_recursos');
				//esta consulta devuelve todos los datos del producto cuyo campo clave (pro_id) es igual a la id que nos llega por la barra de direcciones
				$sql = "UPDATE tbl_recurso SET estado='No disponible', id_usuario = $_SESSION[login_user] WHERE id_recurso=$_REQUEST[id]";
					//mostramos la consulta para ver por pantalla si es lo que esperábamos o no
					//echo "$sql<br/>";

					//lanzamos la sentencia sql
				$datos = mysqli_query($con, $sql);
					
				if(mysqli_affected_rows($con)==1){
			?>
				<p>Su recurso se ha reservado correctamente</p>
				<p>Click aquí para volver: <p><a href="perfil.php" class="boton"> Volver al perfil</a></p>
			<?php
						
				} elseif(mysqli_affected_rows($con)==0){
					echo "No se ha podido reservar el producto";
				} else {
					echo "Error inesperado";
				}
					//cerramos la conexión con la base de datos
				mysqli_close($con);
			?>
			<a href="perfil.php" class="boton">Volver</a>
		</div>
	</body>
</html>
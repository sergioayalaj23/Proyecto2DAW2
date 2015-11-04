<html>
	<head>
		<meta charset="utf-8"/>
		<title>Confirmar reserva</title>
		<link rel="stylesheet" type="text/css" href="estilos.css" media="screen" />
	</head>
	<body>
		<?php
			//realizamos la conexión con mysql
			$con = mysqli_connect('localhost', 'root', '', 'bd_recursos');
			include('login.php');
			//esta consulta devuelve todos los datos del producto cuyo campo clave (pro_id) es igual a la id que nos llega por la barra de direcciones
			$sql = "UPDATE tbl_recurso SET estado='No disponible', id_usuario = $_SESSION[login_user] WHERE id_recurso=$_REQUEST[id]";
			
			//mostramos la consulta para ver por pantalla si es lo que esperábamos o no
			//echo "$sql<br/>";

			//lanzamos la sentencia sql
			$datos = mysqli_query($con, $sql);
			
			if(mysqli_affected_rows($con)==1){
				?>
				
				<p>Su recurso se ha reservado correctamente</p>
			</br></br>
				Click aquí para volver: <a href="panel.php" class="enlaceboton"> Volver al panel de usuario</a>
				<?php
				
			} elseif(mysqli_affected_rows($con)==0){
				echo "No se ha podido reservar el producto";
			} else {
				echo "Error inesperado";
			}

			//cerramos la conexión con la base de datos
			mysqli_close($con);
		?>
		<br/><br/>
		<a href="panel.php" class="enlaceboton">Volver</a>
	</body>
</html>
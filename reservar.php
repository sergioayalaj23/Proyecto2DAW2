<?php
include('login.php');
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>Mostrar los recursos a reservar</title>
		<link rel="stylesheet" type="text/css" href="estilos.css" media="screen" />
	</head>
	<body>
		<?php
<<<<<<< HEAD
			
			$con = mysqli_connect('localhost', 'root', '', 'bd_recursos');

			
			$sql = "SELECT * FROM tbl_tipo_recurso  INNER JOIN tbl_recurso ON tbl_tipo_recurso.id_tipo_recurso=tbl_recurso.id_tipo_recurso WHERE tbl_tipo_recurso.id_tipo_recurso=$_REQUEST[recursos] AND tbl_recurso.id_tipo_recurso=$_REQUEST[recursos]";

			
			
			
=======
			//Realizamos la conexión con mysql
			$con = mysqli_connect('localhost','root','','bd_recursos');

			//Esta consulta devuelve todos los datos del producto cuyo campo clave (pro_id) es igual a la id que nos llega por la barra de direcciones
			$sql = "SELECT * FROM tbl_tipo_recurso  INNER JOIN tbl_recurso ON tbl_tipo_recurso.id_tipo_recurso=tbl_recurso.id_tipo_recurso WHERE tbl_tipo_recurso.id_tipo_recurso=$_REQUEST[recursos] AND tbl_recurso.id_tipo_recurso=$_REQUEST[recursos]";
			
			//Lanzamos la sentencia sql
>>>>>>> refs/remotes/origin/master
			$datos = mysqli_query($con, $sql);
			if(mysqli_num_rows($datos)>0){
				?>
				<table border class="Celda1">
					<tr>
						<th>Nombre del recurso</th>
						<th>Estado</th>
						<th>Reservar</th>
					</tr>

					<?php

					
					while ($prod = mysqli_fetch_array($datos)){
						echo "<tr><td>";

						echo "$prod[nombre_recurso]";
						
						echo "</td><td>$prod[estado]</td>";

						if ($prod['estado'] == "disponible") {
						echo "<td><a href='confirmarreserva.php?id=$prod[id_recurso]'>Reservar</a></td></tr>";
					}else{
						echo "<td style='border:solid 3px red'></td></tr>";
					}
					}

					?>

				</table>

					<?php
			} else {
				echo "Producto con id=$_REQUEST[recursos] no encontrado!";
			}
			
			mysqli_close($con);
		?>
		<br/><br/>
		<a href="panel.php" class="enlaceboton">Volver</a>
	</body>
</html>
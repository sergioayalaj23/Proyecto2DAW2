<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>Mostrar los recursos a reservar</title>
	</head>
	<body>
		<?php
			//Realizamos la conexión con mysql
			$con = mysqli_connect('localhost','root','','bd_recursos');

			//Esta consulta devuelve todos los datos del producto cuyo campo clave (pro_id) es igual a la id que nos llega por la barra de direcciones
			$sql = "SELECT * FROM tbl_tipo_recurso  INNER JOIN tbl_recurso ON tbl_tipo_recurso.id_tipo_recurso=tbl_recurso.id_tipo_recurso WHERE tbl_tipo_recurso.id_tipo_recurso=$_REQUEST[recursos] AND tbl_recurso.id_tipo_recurso=$_REQUEST[recursos]";
			
			//Lanzamos la sentencia sql
			$datos = mysqli_query($con, $sql);
			if(mysqli_num_rows($datos)>0){
				?>
				<table border>
					<tr>
						<th>Nombre del recurso</th>
						<th>Id del recurso</th>
						<th>Estado</th>
					</tr>

					<?php

					//recorremos los resultados y los mostramos por pantalla
					//la función substr devuelve parte de una cadena. A partir del segundo parámetro (aquí 0) devuelve tantos carácteres como el tercer parámetro (aquí 25)
					while ($prod = mysqli_fetch_array($datos)){
						echo "<tr><td>";

						echo "$prod[nombre_recurso]";
						
						echo "</td><td>" . "$prod[id_recurso]" . "</td><td>$prod[estado]</td></tr>";
					}

					?>

				</table>

					<?php
			} else {
				echo "Producto con id=$_REQUEST[recursos] no encontrado!";
			}
			//cerramos la conexión con la base de datos
			mysqli_close($con);
		?>
		<br/><br/>
		<a href="panel.php">Volver</a>
	</body>
</html>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>Mostrar mis articulos</title>
		<link rel="stylesheet" type="text/css" href="estilos.css" media="screen" />
	</head>
	<body>

<?php
include('login.php');
$con = mysqli_connect('localhost', 'root', '', 'bd_recursos');
$sql = "SELECT * FROM `tbl_recurso`, `tbl_tipo_recurso`, `tbl_usuario` WHERE `tbl_usuario`.`id_usuario` = $_SESSION[login_user] AND `tbl_recurso`.`id_usuario` = `tbl_usuario`.`id_usuario` AND `tbl_recurso`.`id_tipo_recurso` = `tbl_tipo_recurso`.`id_tipo_recurso` ORDER BY `tbl_recurso`.`id_recurso` ASC";
$datos = mysqli_query($con,$sql);


if(mysqli_num_rows($datos)>0){
				?>
				<table border class="Celda1">
					<tr>
						<th>Nombre del usuario</th>
						<th>Nombre del recurso</th>
						<th>Tipo del recurso</th>
						<th>Acción</th>
					</tr>

					<?php

			 while($pro = mysqli_fetch_array($datos)) {
			 	echo "<tr><td>";
		     
		      echo utf8_encode("$pro[usuario]</br></td>"); 
		      echo utf8_encode("<td>$pro[nombre_recurso]</br></td>");
		      echo utf8_encode("<td>$pro[nombre_tipo_recurso]</br></td>"); 
		        

 				if ($pro['estado'] == "No disponible") {
						echo "<td><a href='liberarrecurso.php?id=$pro[id_recurso]'>Liberar recurso</a></td></tr>";
					}
 				
				}
				
 				?>

				</table>
			<?php
			}
			else {
				echo "Aun no tienes ningun recurso reservado";
			}
			mysqli_close($con);

			?>
			<br/><br/>
		<a href="panel.php" class="enlaceboton">Volver</a>
</body>
</html>
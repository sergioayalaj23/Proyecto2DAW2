<?php
	include('sesion.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>¡Reserva tu recurso!</title>
	<link rel="stylesheet" href="css/style3.css">
</head>
	<body>
	<nav>
		<?php 
			echo "Perfil de: ".$login_sesion." <a href='logout.php'>| Log Out</a>";
		?>
	</nav>
	<div id="wrapper">
		<?php
			$con = mysqli_connect('localhost', 'root', '', 'bd_recursos');
			$sql = "SELECT * FROM tbl_tipo_recurso  INNER JOIN tbl_recurso ON tbl_tipo_recurso.id_tipo_recurso=tbl_recurso.id_tipo_recurso WHERE tbl_tipo_recurso.id_tipo_recurso=$_REQUEST[recursos] AND tbl_recurso.id_tipo_recurso=$_REQUEST[recursos]";
			
			$datos = mysqli_query($con, $sql);
				if(mysqli_num_rows($datos)>0){
		?>
						
			<table border class="Celda1">
				<tr>
					<th>Recurso</th>
					<th>Estado</th>
					<th>Reservar</th>
				</tr>
		<?php
		while ($prod = mysqli_fetch_array($datos)){
			echo "<tr><td>";
			echo "$prod[nombre_recurso]";
			echo "</td><td>$prod[estado]</td>";
				if ($prod['estado'] == "disponible") {
					echo "<td><a href='confirmarreserva.php?id=$prod[id_recurso]'><img src='img/reservar.png'></a></td></tr>";
				}else{
					echo "<td><img src='img/minus.png'></td></tr>";
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
		<p><a id="boton" href="perfil.php">Volver a mi perfil</a></p>
	</div>
	</body>
</html>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>Liberación del recurso</title>
		<link rel="stylesheet" type="text/css" href="estilos.css" media="screen" />
	</head>
	<body>

<?php
include('login.php');
$con = mysqli_connect('localhost', 'root', '', 'bd_recursos');
$sql = "UPDATE `tbl_recurso` SET estado ='disponible', id_usuario = NULL WHERE `id_recurso` = $_REQUEST[id]";
$datos = mysqli_query($con,$sql);


if(mysqli_affected_rows($con)==1){
				?>
				
				<p>Su recurso se ha liberado correctamente. Muchas gracias</p>
				</br></br>
				Click aquí para volver: <a href="panel.php" class="enlaceboton"> Volver al panel de usuario</a>
				<?php
				
			} elseif(mysqli_affected_rows($con)==0){
				echo "No se ha podido liberar el producto";
			} else {
				echo "Error inesperado";
			}

?>
<br/><br/>
		<a href="panel.php">Volver</a>
	</body>
</html>
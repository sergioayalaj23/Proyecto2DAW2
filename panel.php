<html>
	<head>
		<meta charset="utf-8"/>
		<title>Formulario</title>
		<link rel="stylesheet" type="text/css" href="estilos.css" media="screen" />
		<script>
			function avisarBusqueda(){
				if(document.reservar.recursos.value!=""){
					return true;
				} else {
					alert("Selecciona el tipo de recurso que desea reservar");
					return false;
				}
			}
		</script>
	</head>
	<body>
<<<<<<< HEAD
		<center>
		<section>
		<form name="reservar" action="reservar.php" method="POST" onSubmit="return avisarBusqueda();">
=======
	<?php 
>>>>>>> refs/remotes/origin/master

	// Conexion a la base de datos
	$conexion = mysqli_connect('localhost','root','','bd_recursos');
		
	//Variables Nombre y password
	$username = $_REQUEST['username'];
	$password = $_REQUEST['password'];

<<<<<<< HEAD
			 <section>

            <article >
=======
	// Consulta a la base de datos
	$sql = "SELECT * FROM tbl_usuario WHERE usuario ='$username' AND password ='$password' ";
	$datos = mysqli_query($conexion,$sql);
>>>>>>> refs/remotes/origin/master

	if(mysqli_num_rows($datos) ==1){
		echo "Bienvenido ".$username;
	} else{
		header('Location: index.php');
	}
	?>
		<center>
		<section>
		<form name="reservar" action="reservar.php" method="GET" onSubmit="return avisarBusqueda();">
			<section>
	            <article  class="Celda1">
	            <p><a href="#reservar" class="enlaceboton">Buscar producto para reservar</a></p>	
	            </article>
       		</section>

        <div id="reservar" class="modalmask">
			<div class="modalbox movedown" id="resultadoContent">
                <a href="#close" title="Close" class="boxclose"></a>
                <h2 id="tituloReserva">Buscar producto para reservar</h2>
                <div id="contenidoRecursos">
                	<select name="recursos">
				<option value="" selected>Selecciona una opción...</option>
				<?php
<<<<<<< HEAD
include('login.php');
				$con = mysqli_connect('localhost', 'root', '', 'bd_recursos');
=======

				$con = mysqli_connect('localhost','root','','bd_recursos');
>>>>>>> refs/remotes/origin/master
				$sql = mysqli_query($con, "SELECT * FROM tbl_tipo_recurso");


				while($dato=mysqli_fetch_array($sql)) {
				echo "<option value=\"$dato[id_tipo_recurso]\">$dato[nombre_tipo_recurso]</option>";
				}
				
				mysqli_close($con);
				?>
				</select><br/><br/>
				<input type="submit" value="Buscar" >

                </div>
            </div>
		</div>	

			

		</form>
	
	<section>
		<form action="misarticulos.php" method="POST">
			<input type="submit" class="enlaceboton" value="Ver mis productos">
		</form>
	</section>
	<section>
		<form action="logout.php" method="POST">
			<input type="submit" class="enlaceboton" value="Log Out">
		</form>

		
	</section>
</center>
	

	</body>
	</html>

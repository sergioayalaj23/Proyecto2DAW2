<?php 
 include('login.php');

 	//Miramos si la variable Sesion existe y enviamos a la pagina perfil
	if(isset($_SESSION['login_user'])){
	 	header('location:panel.php');
	}
	
 ?>
 <!DOCTYPE html>
 <html lang="en">
 <head>
 	<meta charset="UTF-8">
 	<title>Pagina web</title>
 	<link rel="stylesheet" href="css/style.css">
 </head>
 <body>
 	<div id="wrapper">
 		<h2>Acceso al Panel</h2>
 		<form action="" method="GET">
 			<p>Usuario</p>
 			<p><input type="text" name="username" placeholder="admin"></p>
 			<p>Password</p>
 			<p><input type="password" name="password" placeholder="**********"></p>
 				<!-- Variable error -->
 			<p><span><?php echo "$error"; ?></span></p>
 			<p><input type="submit" name="submit" value="Acceder"></p>
 		</form>
 	</div>
 </body>
 </html>
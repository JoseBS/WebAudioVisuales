<?php
    require_once($_SERVER['DOCUMENT_ROOT'].'/WebAudioVisuales/requires.class.php');
    $requires = new Requires();
    $requires -> importParametroReservaController();
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/../WebAudioVisuales/interfaz/style.css"">
	<title>Parametros Reservas</title>
	<meta name="viewport" content="width=device-width">
</head>
	<body>
		<header>
			<img src="/../WebAudioVisuales/interfaz/img/logoUni.png">
			<h1 align="center">Recursos Audiovisuales</h1>		
		</header>
		
			<section name="ParametroReserva" class="parametroReserva">
				<fieldset class="pRF"><legend style="font-weight:bold"> Parametros Reserva</legend>
				<form method="POST" action="parametros_Reservas.php">
					<table>
						<thead>
							<tr>
								<td colspan="2"><h3>Crear Parametros Reserva</h3></td>
							</tr>	
						</thead>
							<tbody>
								<tr>
									<td>Nombre: </td>
									<td><input type="text" name="txtNombreR"></td>
								</tr>
								<tr>
									<td>Dias Mínimos Reservas: </td>
									<td><input type="smallint" name="smallintDiasMinimosReserva"></td>
								</tr>
								<tr>
									<td>Tiempo Mínimo Reserva: </td>
									<td><input type="time" name="timeTiempoMinimoReserva"></td>
								</tr>
								<tr>
									<td>Dias Máximo Reservas: </td>
									<td><input type="smallint" name="smallintDiasMaximoReserva"></td>
								</tr>
								<tr>
									<td>Tiempo Máximo Reserva: </td>
									<td><input type="time" name="timeTiempoMaximoReserva"></td>
								</tr>
								<tr>
									<td>Estado: </td>
									<td><input type="boolean" name="booleanEstado"></td>
								</tr>
								<tr>
									<td><input type="submit" name="bootonCancelar" value="Cancelar"></td>
									<td><input type="submit" name="bootonResgistrar" value="Registar"></td>
								</tr>
								<tr>
									<td colspan="2">
									<?php

	                                    if (isset($_POST['botonRegistrar'])) {
	                                        $parametroReserva = new ParametroReserva();
	                                        //construccion de objetos
	                                        $parametroReserva->setNombre($_POST['txtNombreR']);
	                                        $parametroReserva->setDiasMinimoReserva($_POST['smallintDiasMinimosReserva']);
	                                        $parametroReserva->setTiempoMinimoReserva($_POST['timeTiempoMinimoReserva']);
	                                        $parametroReserva->setDiaMaximoReserva($_POST['smallintDiasMaximoReserva']);
	                                        $parametroReserva->setTiempoMaximoReserva($_POST['timeTiempoMaximoReserva']);
	                                        $parametroReserva->setEstado($_POST['booleanEstado']);
	                                        //instanció un objeto de tipo parametro tipo controller
	                                        $parametroReservaController = new ParametroReservaController();
	                                        //le pasa al controlador el objeto tipo parametro horario
	                                        $parametroReservaController->insertarParametroReserva($parametroReserva);
	                                    }
	                                    //Falta crear la condicción si esta seguro o desea cancelarlo.
	                                    //Falta el aviso cuando registre en la db o si hay algún problema.
	                                ?>
									</td>
								</tr>

							</tbody>
						</table>
					</form>
				</fieldset>
			</section>
		</body>
	<footer>
		<table align="right" class="redes">
		<tbody>
			<tr>
				<td style="text-align: right;"><a href="https://www.facebook.com/UNISANGIL" target="_blank" rel="alternate"><img src="/../WebAudioVisuales/interfaz/img/facebook.jpg" alt="" height="23" width="23"></a></td>
			</tr>

			<tr>
				<td style="text-align: right;"><a href="https://twitter.com/unisangil" target="_blank" rel="alternate"><img src="/../WebAudioVisuales/interfaz/img/twitter.png" alt="" height="23" width="23"></a></td>
			</tr>
			<tr>
				<td style="text-align: right;"><a href="https://plus.google.com/+unisangil/posts" target="_blank" rel="alternate"><img src="/../WebAudioVisuales/interfaz/img/google.png" alt="" height="23" width="23"></a></td>
			</tr>
				
			</tr>
		</tbody>
		</table>
	</footer>
</html>
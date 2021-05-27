xquery version "1.0";

<html>
	<head>
		<title>Tarea 10.2 - Actividades formativas</title>
	</head>
	<body>
	
		<h1>Apartado 1</h1>
		<h3>Información de las {count(//OFICINA)} oficinas agrarias del Cabildo</h3>
		<table style="border: 1px solid orange; font-family: Verdana; font-size: 12pt;">
			<tr>
				<th bgcolor="orange" style="padding: 10px;">OFICINA</th>
				<th bgcolor="orange" style="padding: 10px;">CURSOS</th>
				<th bgcolor="orange" style="padding: 10px;">CHARLA</th>
				<th bgcolor="orange" style="padding: 10px;">VISITA</th>
				<th bgcolor="orange" style="padding: 10px;">CURSILLOS</th>
			</tr>
			{
				for $oficina in //OFICINA
				order by $oficina/@sede
				return
					<tr>
						<td style="font-family: Verdana; font-size: 12pt; padding: 5px;">{string($oficina/@sede)}</td>
						<td style="font-family: Verdana; font-size: 12pt; padding: 5px;">{string(count($oficina/ACCION[TIPO='Cursos']))}</td>
						<td style="font-family: Verdana; font-size: 12pt; padding: 5px;">{string(count($oficina/ACCION[TIPO='Charla']))}</td>
						<td style="font-family: Verdana; font-size: 12pt; padding: 5px;">{string(count($oficina/ACCION[TIPO='Visita']))}</td>
						<td style="font-family: Verdana; font-size: 12pt; padding: 5px;">{string(count($oficina/ACCION[TIPO='Cursillos']))}</td>
					</tr>
			}
		</table>
		<br/>
		<h1>Apartado 2</h1>
		<h3>Cursos de más de 26 horas</h3>
		<table style="border: 1px solid orange; font-family: Verdana; font-size: 12pt;">
			<tr>
				<th bgcolor="orange" style="padding: 10px;">Horas</th>
				<th bgcolor="orange" style="padding: 10px;">Nombre</th>
				<th bgcolor="orange" style="padding: 10px;">Oficina</th>
				<th bgcolor="orange" style="padding: 10px;">Lugar</th>
				<th bgcolor="orange" style="padding: 10px;">Municipio</th>
			</tr>
			{
				for $accion in //ACCION
				where ($accion/HORAS > 26)
				return
					<tr>
						<td style="font-family: Verdana; font-size: 12pt; padding: 5px;">{string($accion/HORAS)}</td>
						<td style="font-family: Verdana; font-size: 12pt; padding: 5px;">{string($accion/NOMBRE)}</td>
						<td style="font-family: Verdana; font-size: 12pt; padding: 5px;">{string($accion/../@sede)}</td>
						<td style="font-family: Verdana; font-size: 12pt; padding: 5px;">{string($accion/LUGAR)}</td>
						<td style="font-family: Verdana; font-size: 12pt; padding: 5px;">{string($accion/MUNICIPIO)}</td>
					</tr>
			}
		</table>
		<br/>
		<h1>Apartado 3</h1>
		<h3>Acciones destinadas al aguacate iniciadas en el segundo semestre</h3>
		<table style="border: 1px solid orange; font-family: Verdana; font-size: 12pt;">
			<tr>
				<th bgcolor="orange" style="padding: 10px;">Acción Nº</th>
				<th bgcolor="orange" style="padding: 10px;">Nombre</th>
				<th bgcolor="orange" style="padding: 10px;">Oficina</th>
			</tr>
			{
				for $accion at $index in //ACCION
				where (contains($accion/NOMBRE, 'aguacate'))
				return
					<tr>
						<td style="font-family: Verdana; font-size: 12pt; padding: 5px;">{string($index)}</td>
						<td style="font-family: Verdana; font-size: 12pt; padding: 5px;">{string($accion/NOMBRE)}</td>
						<td style="font-family: Verdana; font-size: 12pt; padding: 5px;">{string($accion/../@sede)}</td>
					</tr>
			}
		</table>
	</body>
</html>

xquery version "1.0";

declare default element namespace "http://misitio.com";

declare copy-namespaces no-preserve, no-inherit ;


<html>
	<head>
		<title>Lista</title>
	</head>
	
	<body>
		<h2>Comentarios por alumno</h2>
		<table style="border: 1px solid black;">
			<tr>
				<th>CIAL</th>
				<th>Fechas con comentarios</th>
				<th>Numero de comentarios</th>
			</tr>
			{
				for $alumno in //alumno
				return
					declare $contador = 0
					for $comentario in $alumno/comentario
					return
						<tr>
							<td>{string($alumno/@cial)}</td>
							<td>
								{
								
								}
							</td>
							<td>{string(count($alumno/comentario))}</td>
						</tr>
				
			}		
		</table>
	</body>
</html>

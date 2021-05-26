xquery version "1.0";

declare default element namespace "http://misitio.com";

declare copy-namespaces no-preserve, no-inherit ;


<html>
	<head>
		<title>Lista</title>
	</head>
	
	<body>
		<b>Hay {count(//alumno)} alumnos
</b>
	
		<br/>
		<table style="border: 1px solid black;">
			<tr>
				<th>CIAL</th>
				<th>Fecha</th>
				<th>Hora de clase</th>
			</tr>
			{
				for $falta in //alumno//falta
				return				
					if ($falta/@tipo = 'I') then (
						<tr>
							<td>{string($falta/../@cial)}</td>
							<td>{string($falta/@fecha)}</td>
							<td>{string($falta/@hora)}</td>
						</tr>
					) else ()
			}
		</table>
	</body>
</html>

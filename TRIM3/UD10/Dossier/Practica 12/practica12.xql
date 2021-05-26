xquery version "1.0";

declare default element namespace "http://misitio.com";

declare copy-namespaces no-preserve, o-inherit ;


<html>
	<head>
		<title>Lista</title>
	</head>
	
	<body>
		<b>Cursos en los que todos los alumnos estan matriculados en "LND"</b>
		<table style="border: 1px solid black;">
			<tr>
				<th>Curso</th>
			</tr>
			{
				for $curso in //curso
				where every $alumno in $curso satisfies ($curso//asignatura = 'Lenguajes de marcas')
				return
					<tr>
						<td>{string($curso/@nombre)}</td>
					</tr>
			}		
		</table>
	</body>
</html>

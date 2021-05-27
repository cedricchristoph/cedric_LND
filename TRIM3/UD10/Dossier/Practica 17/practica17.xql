xquery version "1.0";


<html>

	<head><title>Practica 17</title></head>

	<body>

		<h2>Comentarios por fecha</h2>

		<table style="border: 1px solid black;">

			<tr>

				<th>Alumno</th>

				<th>Tipo</th>

				<th>Fecha</th>

				<th>Comentario</th>

			</tr>

			{

				for $falta in doc("faltas.xml")//falta

				(:where some $a in $falta satisfies ($a/@tipo = 'I'):)

				return

					<tr>

						<td>{string(doc("comentarios.xml")//alumno[@cial=$falta/../@cial]/nombre)}</td>

						

					</tr>

			}

		</table>

	</body>

</html>

<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Tue Apr 27 15:41:00 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
		<xsl:apply-templates select="/instituto/curso/alumno"/>
		</body>
	</html>
	</xsl:template>

	<xsl:template match="alumno">

		<table style="border: 1px solid black;" >

		<tr><th>

		<h3>Lista de nombres y apellidos</h3><br/>

		<table>

			<tr>

				<th>Nombre</th>

				<th>Apellidos</th>

			</tr>

			<tr>

				<th><xsl:value-of select="nombre"/></th>

				<th><xsl:value-of select="apellidos"/></th>

			</tr>

		</table>

		<br/>

		<h3>Lista de ciales y curso</h3>

		<table>

			<tr>

				<th>Cial</th>

				<th>Curso</th>

			</tr>

			<tr>

				<th><xsl:value-of select="@cial"/></th>

				<th><xsl:value-of select="../@nombre"/></th>

			</tr>

		</table>

		</th></tr>

		</table>

	</xsl:template>

	

	
</xsl:stylesheet>



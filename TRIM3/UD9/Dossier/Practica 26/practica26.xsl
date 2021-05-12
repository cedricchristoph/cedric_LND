<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Wed May 05 15:02:27 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
			<h2>NOTAS:</h2>
			<table>
				<tr>
					<th bgcolor="#f2b7f7" style="color: white; text-align: left;">Número</th>
					<th bgcolor="#f2b7f7" style="color: white; text-align: left;">Alumno</th>
					<th bgcolor="#f2b7f7" style="color: white; text-align: left;">Materia</th>
				</tr>
				<xsl:apply-templates select="/instituto/curso/alumno"/>
			</table>
		</body>
	</html>
	</xsl:template>


	<xsl:template match="alumno">
		<tr>
			<td bgcolor="#f2b7f7" style="color: white; text-align: center;"><xsl:number format="1"/></td>
			<td style="text-align: left;">
				<xsl:value-of select="nombre"/>&#160;<xsl:value-of select="apellidos"/>
			</td>
			<td>
				<xsl:for-each select="notas/asignatura">
					<xsl:value-of select="@nombre"/>
:&#160;<xsl:value-of select="./nota"/><br/>
				</xsl:for-each>
			</td>
		</tr>

	</xsl:template>
</xsl:stylesheet>



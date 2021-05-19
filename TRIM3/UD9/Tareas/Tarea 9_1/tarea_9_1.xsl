<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Wed May 05 16:06:21 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
<xsl:param name="firstTable" select="true"></xsl:param>
	<xsl:template match="/">
	<html>
		<body>
			<h3 style="color: green;" >Faltas justificadas</h3>
			<table style="border: 1px solid green; width: 30%;" >
				<tr>
					<td bgcolor="green">Nº</td>
					<td bgcolor="green">CIAL</td>
					<td bgcolor="green">Total de faltas justificadas</td>
				</tr>
				<xsl:apply-templates select="/faltas/alumno" mode="justificado"></xsl:apply-templates>
			</table>
			<br/>
			<h3 style="color: red;" >Faltas injustificadas</h3>
			<table style="border: 1px solid red; width: 30%;" >
				<tr>
					<td bgcolor="red">Nº</td>
					<td bgcolor="red">CIAL</td>
					<td bgcolor="red">Total de faltas injustificadas</td>
				</tr>
				<xsl:apply-templates select="/faltas/alumno" mode="injustificado"></xsl:apply-templates>
			</table>
		</body>
	</html>
	</xsl:template>

	<xsl:template match="alumno" mode="justificado">

				<tr>

					<td bgcolor="green" style="text-align: center;" ><xsl:number format="a"/>)</td>

					<td><xsl:value-of select="@cial"/></td>

					<td><xsl:value-of select="count(falta[@tipo='J'])"/></td>

				</tr>

	</xsl:template>
	<xsl:template match="alumno" mode="injustificado">
				<tr>

					<td bgcolor="red" style="text-align: center;" ><xsl:number format="a"/>)</td>

					<td><xsl:value-of select="@cial"/></td>

					<td>
						<xsl:value-of select="count(falta[@tipo='I'])"/>
						<xsl:if test="count(falta[@tipo='I']) &gt; 5">
							<b style="color: red;" > Pérdida de eval. contínua</b>
						</xsl:if>
					</td>

				</tr>
	</xsl:template>
</xsl:stylesheet>



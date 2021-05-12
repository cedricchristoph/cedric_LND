<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Tue Apr 27 15:41:00 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
			<xsl:apply-templates select="/instituto/curso"/>
		</body>
	</html>
	</xsl:template>
	
<xsl:template match="curso">
	
	<table style="border: 1px solid black;">
	
		<tr style="border: 1px solid black;">
	
			<th colspan="3"  bgcolor="blue" style="border: 1px solid black; color:white; text-align: left;">
	
				<xsl:value-of select="@nombre"/>
	
			</th>
	
		</tr>
	
		<tr style="border: 1px solid black;">
	
			<th style="text-align: left;" bgcolor="pink">CIAL</th>
	
			<th style="text-align: left;" bgcolor="pink">Nombre</th>
	
			<th style="text-align: left;" bgcolor="pink">Apellidos</th>
	
		</tr>
	
		<xsl:apply-templates select="alumno"/>
	
	</table>
	
	<br/>
	
</xsl:template>
	
<xsl:template match="alumno">
	
	<tr>
	
		<th  bgcolor="green" style="color: white;" ><xsl:value-of select="@cial"/></th>
	
		<th style="text-align: left;" ><xsl:value-of select="nombre"/></th>
	
		<th style="text-align: left;" ><xsl:value-of select="apellidos"/></th>
	
	</tr>
	
</xsl:template>
</xsl:stylesheet>



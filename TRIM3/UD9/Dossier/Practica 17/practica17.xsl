<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Wed Apr 28 14:49:52 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
			<h3>Lista de alumnos con alguna suspensa</h3>
			<xsl:apply-templates select="/instituto/curso"/>
		</body>
	</html>
	</xsl:template>
	<xsl:template match="curso">
		<xsl:value-of select="@nombre"/><br/>
		<xsl:apply-templates select="alumno[notas/nota[. &lt; 5]]"></xsl:apply-templates>
		<br/>
	</xsl:template>
	<xsl:template match="alumno">
		<xsl:number format="i"/>) <xsl:value-of select="nombre"/> tiene alguna materia suspensa
		<br/>
	</xsl:template>
	
</xsl:stylesheet>



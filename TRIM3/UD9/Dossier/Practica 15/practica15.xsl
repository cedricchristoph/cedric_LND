<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Wed Apr 28 14:49:52 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
			<h3>Lista de cursos disponibles</h3>
			<xsl:apply-templates select="/instituto/curso"/>
		</body>
	</html>
	</xsl:template>
	<xsl:template match="curso">
		<xsl:number format="a"/>) <xsl:value-of select="@nombre"/>
		<br/>
	</xsl:template>
</xsl:stylesheet>



<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Wed Apr 28 14:49:52 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
			<h3>Lista de cursos ofertados:</h3>
			<table>
				<tr><th bgcolor="blue" style="color: white;" >Código</th><th>Nombre</th></tr>
				<xsl:for-each select="/instituto/curso">
					<tr>
						<th bgcolor="blue" style="color: white;"><xsl:number format="1"/></th>
						<th><xsl:value-of select="@nombre"/></th>
					</tr>
				</xsl:for-each>
			</table>
		</body>
	</html>
	</xsl:template>
</xsl:stylesheet>



<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Tue Apr 27 15:33:18 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
		<xsl:apply-templates select="/Category/Feed/item"/>
		</body>
	</html>
	</xsl:template>

	<xsl:template match="item">

		<table style="width:70%; border: 1px solid black; text-align: left;">

			<tr>

				<th>

					<xsl:value-of select="title"/>

				</th>

			</tr>

		</table>

		<br/>

	</xsl:template>
</xsl:stylesheet>



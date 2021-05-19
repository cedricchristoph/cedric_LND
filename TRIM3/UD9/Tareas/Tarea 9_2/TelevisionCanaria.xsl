<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Tue May 18 14:51:23 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
<xsl:variable name="left">text-align: left;</xsl:variable>
	
<xsl:variable name="pinkBorder">border-style: solid; border-color: #eda4a4</xsl:variable>
	<xsl:variable name="pink">#eda4a4</xsl:variable>
	<xsl:template match="/">
	<html>
		<body>
			<h2>Noticias con la palabra "abril" en el área de contenido:</h2>
			<table width="1000px;" style="border-style: solid; border-color: #eda4a4;">
				<tr>
					<td bgcolor="#eda4a4" style="width: 25%; text-align: left; border-style: solid; border-color: #eda4a4">TITULO</td>
					<td bgcolor="#eda4a4" style="width: 75%; text-align: left; border-style: solid; border-color: #eda4a4">CONTENIDO</td>
				</tr>
				<xsl:apply-templates select="/rss/channel/item[contains(description, 'abril')]" mode="abril"/>
			</table>
			<br/>
			<table width="1000px;" style="border-style: solid; border-color: #eda4a4;">
				<tr>
					<td bgcolor="#eda4a4" style="width: 25%; text-align: left; border-style: solid; border-color: #eda4a4">FECHA</td>
					<td bgcolor="#eda4a4" style="width: 25%; text-align: left; border-style: solid; border-color: #eda4a4">TITULO</td>
					<td bgcolor="#eda4a4" style="width: 50%; text-align: left; border-style: solid; border-color: #eda4a4">CONTENIDO</td>
				</tr>
				<xsl:apply-templates select="/rss/channel/item" mode="sc"/>
			</table>
		</body>
	</html>
	</xsl:template>
	
	<xsl:template match="item" mode="abril">
		<tr>
			<td bgcolor="#eda4a4" style="text-align: left; border-style: solid; border-color: #eda4a4"><xsl:value-of select="title"/></td>
			<td style="$left"><xsl:value-of select="description"/></td>
		</tr>
	</xsl:template>
	
	<xsl:template match="item" mode="sc">
		<xsl:choose>
			<xsl:when test="title[contains(text(), 'S/C')]">
				<tr>
					<td bgcolor="#eda4a4" style="text-align: left; border-style: solid; border-color: #eda4a4"><xsl:value-of select="pubDate"/></td>

					<td style="text-align: left;"><xsl:value-of select="title"/></td>

					<td style="$left"><xsl:value-of select="description"/></td>

				</tr>
			</xsl:when>
			<xsl:when test="title[contains(text(), 'Santa Cruz de Tenerife')]">
				<tr>
					<td bgcolor="#eda4a4" style="text-align: left; border-style: solid; border-color: #eda4a4"><xsl:value-of select="pubDate"/></td>

					<td style="text-align: left;"><xsl:value-of select="title"/></td>

					<td style="$left"><xsl:value-of select="description"/></td>

				</tr>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>



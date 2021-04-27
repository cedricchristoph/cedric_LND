<?xml version="1.0" encoding="UTF-8" ?>

<!-- New document created with EditiX at Tue Apr 27 16:14:31 BST 2021 -->

<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:xdt="http://www.w3.org/2005/xpath-datatypes"
	xmlns:err="http://www.w3.org/2005/xqt-errors"
	exclude-result-prefixes="xs xdt err fn">

	<xsl:output method="xml" indent="yes"/>
	
	<xsl:template match="/">
		<reporteros>
			<xsl:apply-templates select="/Category/Feed/item"/>
		</reporteros>
	</xsl:template>
	<xsl:template match="item">
		<xsl:element name="reportero">
			<xsl:element name="nombre"><xsl:value-of select="author"></xsl:value-of></xsl:element>
			<xsl:element name="noticia"><xsl:value-of select="title"></xsl:value-of></xsl:element>
			<xsl:element name="fecha"><xsl:value-of select="pubDate"></xsl:value-of></xsl:element>
		</xsl:element>
	</xsl:template>

</xsl:stylesheet>

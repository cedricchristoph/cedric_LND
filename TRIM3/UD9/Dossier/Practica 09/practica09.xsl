<?xml version="1.0" encoding="UTF-8" ?>

<!-- New document created with EditiX at Tue Apr 27 15:25:24 BST 2021 -->

<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:xdt="http://www.w3.org/2005/xpath-datatypes"
	xmlns:err="http://www.w3.org/2005/xqt-errors"
	exclude-result-prefixes="xs xdt err fn">

	<xsl:output method="xml" indent="yes"/>
	
	<xsl:template match="/">
		<noticias>
			<xsl:apply-templates select="/Category/Feed/item"/>
		
		</noticias>
	</xsl:template>
	<xsl:template match="item">
		<titulo>
			<xsl:value-of select="title"></xsl:value-of>
		</titulo>
	</xsl:template>
</xsl:stylesheet>

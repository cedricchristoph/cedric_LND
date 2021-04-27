<?xml version="1.0" encoding="UTF-8" ?>

<!-- New document created with EditiX at Wed Apr 14 16:51:09 BST 2021 -->

<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:xdt="http://www.w3.org/2005/xpath-datatypes"
	xmlns:err="http://www.w3.org/2005/xqt-errors"
	exclude-result-prefixes="xs xdt err fn">

	<xsl:output method="xml" indent="yes"/>
	
	<xsl:template match="/">
		<cartas>
			<xsl:apply-templates select="/instituto/curso/alumno[contains(apellidos, 'Pérez')]"/>
		</cartas>
	
	</xsl:template>
	<xsl:template match="alumno">
		<invitacion>
			<destinatario>
				<xsl:value-of select="nombre"/> - <xsl:value-of select="apellidos"/>
			</destinatario>
			<evento>
				1ª Congregación de los Pérez
			</evento>
		</invitacion>
	</xsl:template>
</xsl:stylesheet>

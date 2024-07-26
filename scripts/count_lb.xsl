<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="#all">
    <xsl:output encoding="UTF-8" method="xml" xml:space="preserve" indent="no"/>
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="lb">
        <xsl:element name="{name()}" xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="n">
                <xsl:number level="any" count="lb" format="00000"/>
            </xsl:attribute>
            <xsl:copy-of select="@break"/>
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>
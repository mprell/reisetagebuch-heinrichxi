<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="#all">
    <xsl:output encoding="UTF-8" method="xml" xml:space="preserve" indent="no"/>
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="/">
    
        <TEI xmlns="http://www.tei-c.org/ns/1.0">
            
            <teiHeader>
                <fileDesc>
                    <titleStmt>
                        <title>Title</title>
                    </titleStmt>
                    <publicationStmt>
                        <p>Publication Information</p>
                    </publicationStmt>
                    <sourceDesc>
                        <p>Information about the source</p>
                    </sourceDesc>
                </fileDesc>
            </teiHeader>
            
            <text>
                <body>
                    
                    <!--nur items mit Inhalt verarbeiten-->
                    <xsl:for-each select="//tei:item[@n='main'][node()]">
                        
                        <!-- Sortierung der Textteile nach Digitalisatnummer -->
                        <xsl:sort select="number(substring-before(substring-after(ancestor::tei:body/preceding-sibling::tei:front/tei:div/tei:list[@n='Digitalisat']/tei:item/tei:list[1]/tei:item[@n='linkdigitalisat']/text(), 'Italien_'), '.tif'))" data-type="number" order="ascending"/>
                        
                        <!-- nur Text mit verlinktem Digitalisat ausgeben -->
                        <xsl:if test="contains(ancestor::tei:body/preceding-sibling::tei:front/tei:div/tei:list[@n='Digitalisat']/tei:item/tei:list[1]/tei:item[@n='linkdigitalisat']/text(), '.tif')">
                            
                            <div type="page">
                            
                            <xsl:text>&#10;</xsl:text>
                                <pb facs="#f{format-number(number(substring-before(substring-after(ancestor::tei:body/preceding-sibling::tei:front/tei:div/tei:list[@n='Digitalisat']/tei:item/tei:list[1]/tei:item[@n='linkdigitalisat']/text(), 'Italien_'), '.tif')), '0000')}"/>
                                <xsl:text>&#10;</xsl:text>
                                <lb/>
                                <xsl:text>&#10;</xsl:text>
                                <p>
                                    <xsl:apply-templates/>
                                </p>
                            </div>
                        </xsl:if>
                    </xsl:for-each>
                </body>
                
                <back>
                <xsl:copy-of select="/tei:teiCorpus/tei:TEI[last()]/tei:text/tei:back/tei:div[1]"/>
                    
                    <xsl:copy-of select="//tei:div[@n='Textstellen'][descendant::tei:item]"/>
                </back>
                
            </text>
        </TEI>
    </xsl:template>
    
    <!-- Template to match hi elements with rend attribute containing ";" -->
    <xsl:template match="tei:hi[@rend[contains(., ';')]]">
        <xsl:variable name="rend-attributes" select="tokenize(@rend, ';')"/>
        <xsl:variable name="content" select="node()"/>
        
        <!-- Create nested hi elements based on rend attributes -->
        <xsl:call-template name="nest-hi-elements">
            <xsl:with-param name="attributes" select="$rend-attributes"/>
            <xsl:with-param name="content" select="$content"/>
        </xsl:call-template>
    </xsl:template>
    
    <!-- Template to handle nesting of hi elements -->
    <xsl:template name="nest-hi-elements">
        <xsl:param name="attributes"/>
        <xsl:param name="content"/>
        
        <xsl:choose>
            <!-- If there are still attributes left, create a hi element and recurse -->
            <xsl:when test="count($attributes) > 0">
                <xsl:element name="hi" xmlns="http://www.tei-c.org/ns/1.0">
                    <xsl:attribute name="rend">
                        <xsl:value-of select="$attributes[1]"/>
                    </xsl:attribute>
                    <xsl:call-template name="nest-hi-elements">
                        <xsl:with-param name="attributes" select="$attributes[position() > 1]"/>
                        <xsl:with-param name="content" select="$content"/>
                    </xsl:call-template>
                </xsl:element>
            </xsl:when>
            <!-- If no more attributes are left, output the content -->
            <xsl:otherwise>
                <xsl:copy-of select="$content"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>

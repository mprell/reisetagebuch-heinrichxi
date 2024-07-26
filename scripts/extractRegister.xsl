<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="#all">
    <xsl:output encoding="UTF-8" method="xml" xml:space="preserve" indent="yes"/>

    <!-- definiere keys für beschleunigte Verarbeitung des XSLT  -->
    <xsl:key name="anchorsByAna" match="tei:anchor[@type='b']" use="@ana"/>

    <xsl:param name="register" select="/tei:teiCorpus/tei:TEI[861]/tei:text[1]/tei:back[1]/tei:div[1]"/>

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
                <div type="index">
                    <div>
                        <head>Personen</head>
                        <listPerson>
                            <xsl:for-each select="$register/tei:list[18]/tei:item">
                                <xsl:sort select="." order="ascending" />
                                <xsl:variable name="id" select="@xml:id"/>
                                <person xml:id="{@xml:id}">
                                    <persName>
                                        <xsl:value-of select="text()[not(/tei:list[@type = 'additional'])]"/>
                                    </persName>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'gnd']">
                                        <idno type="GND">
                                            <xsl:value-of select="normalize-space(./tei:list[@type = 'additional']/tei:item[@n = 'gnd']/text())"/>
                                        </idno>
                                    </xsl:if>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']">
                                        <note>
                                            <xsl:value-of select="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']/text()"/>
                                        </note>
                                    </xsl:if>
                                    <xsl:apply-templates select="key('anchorsByAna', $id)"/>
                                </person>
                            </xsl:for-each>
                        </listPerson>
                    </div>
                    
                    <div>
                        <head>Mythische Personen</head>
                        <listPerson>
                            <xsl:for-each select="$register/tei:list[69]/tei:item">
                                <xsl:sort select="." order="ascending" />
                                <xsl:variable name="id" select="@xml:id"/>
                                <person xml:id="{@xml:id}">
                                    <persName>
                                        <xsl:value-of select="text()[not(/tei:list[@type = 'additional'])]"/>
                                    </persName>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'gnd']">
                                        <idno type="GND">
                                            <xsl:value-of select="normalize-space(./tei:list[@type = 'additional']/tei:item[@n = 'gnd']/text())"/>
                                        </idno>
                                    </xsl:if>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']">
                                        <note>
                                            <xsl:value-of select="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']/text()"/>
                                        </note>
                                    </xsl:if>
                                    <xsl:apply-templates select="key('anchorsByAna', $id)"/>
                                </person>
                            </xsl:for-each>
                        </listPerson>
                    </div>
                    
                    <div>
                        <head>Personengruppen</head>
                        <listPerson>
                            <xsl:for-each select="$register/tei:list[68]/tei:item">
                                <xsl:sort select="." order="ascending" />
                                <xsl:variable name="id" select="@xml:id"/>
                                <personGrp xml:id="{@xml:id}">
                                    <name>
                                        <xsl:value-of select="text()[not(/tei:list[@type = 'additional'])]"/>
                                    </name>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'gnd']">
                                        <idno type="GND">
                                            <xsl:value-of select="normalize-space(./tei:list[@type = 'additional']/tei:item[@n = 'gnd']/text())"/>
                                        </idno>
                                    </xsl:if>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']">
                                        <note>
                                            <xsl:value-of select="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']/text()"/>
                                        </note>
                                    </xsl:if>
                                    <xsl:apply-templates select="key('anchorsByAna', $id)"/>
                                </personGrp>
                            </xsl:for-each>
                        </listPerson>
                    </div>
                    
                    <div>
                        <head>Körperschaften</head>
                        <listOrg>
                            <xsl:for-each select="$register/tei:list[19]/tei:item">
                                <xsl:sort select="." order="ascending" />
                                <xsl:variable name="id" select="@xml:id"/>
                                <org xml:id="{@xml:id}">
                                    <orgName>
                                        <xsl:value-of select="text()[not(/tei:list[@type = 'additional'])]"/>
                                    </orgName>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'gnd']">
                                        <idno type="GND">
                                            <xsl:value-of select="normalize-space(./tei:list[@type = 'additional']/tei:item[@n = 'gnd']/text())"/>
                                        </idno>
                                    </xsl:if>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']">
                                        <note>
                                            <xsl:value-of select="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']/text()"/>
                                        </note>
                                    </xsl:if>
                                    <xsl:apply-templates select="key('anchorsByAna', $id)"/>
                                </org>
                            </xsl:for-each>
                        </listOrg>
                    </div>
                    
                    <div>
                        <head>Geografika</head>
                        <listPlace>
                            <xsl:for-each select="$register/tei:list[45]/tei:item">
                                <xsl:sort select="." order="ascending" />
                                <xsl:variable name="id" select="@xml:id"/>
                                <place xml:id="{@xml:id}">
                                    <placeName>
                                        <xsl:value-of select="text()[not(/tei:list[@type = 'additional'])]"/>
                                    </placeName>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'gnd']">
                                        <idno type="GND">
                                            <xsl:value-of select="normalize-space(./tei:list[@type = 'additional']/tei:item[@n = 'gnd']/text())"/>
                                        </idno>
                                    </xsl:if>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']">
                                        <note>
                                            <xsl:value-of select="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']/text()"/>
                                        </note>
                                    </xsl:if>
                                    <xsl:apply-templates select="key('anchorsByAna', $id)"/>
                                </place>
                            </xsl:for-each>
                        </listPlace>
                    </div>
                    
                    <div>
                        <head>Mythische Geografika</head>
                        <listPlace>
                            <xsl:for-each select="$register/tei:list[70]/tei:item">
                                <xsl:sort select="." order="ascending" />
                                <xsl:variable name="id" select="@xml:id"/>
                                <place xml:id="{@xml:id}">
                                    <placeName>
                                        <xsl:value-of select="text()[not(/tei:list[@type = 'additional'])]"/>
                                    </placeName>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'gnd']">
                                        <idno type="GND">
                                            <xsl:value-of select="normalize-space(./tei:list[@type = 'additional']/tei:item[@n = 'gnd']/text())"/>
                                        </idno>
                                    </xsl:if>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']">
                                        <note>
                                            <xsl:value-of select="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']/text()"/>
                                        </note>
                                    </xsl:if>
                                    <xsl:apply-templates select="key('anchorsByAna', $id)"/>
                                </place>
                            </xsl:for-each>
                        </listPlace>
                    </div>

                    <div>
                        <head>Werke</head>
                        <listBibl>
                            <xsl:for-each select="$register/tei:list[22]/tei:item">
                                <xsl:sort select="." order="ascending" />
                                <xsl:variable name="id" select="@xml:id"/>
                                <bibl xml:id="{@xml:id}">
                                    <title>
                                        <xsl:value-of select="text()[not(/tei:list[@type = 'additional'])]"/>
                                    </title>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'gnd']">
                                        <idno type="GND">
                                            <xsl:value-of select="normalize-space(./tei:list[@type = 'additional']/tei:item[@n = 'gnd']/text())"/>
                                        </idno>
                                    </xsl:if>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']">
                                        <note>
                                            <xsl:value-of select="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']/text()"/>
                                        </note>
                                    </xsl:if>
                                    <xsl:apply-templates select="key('anchorsByAna', $id)"/>
                                </bibl>
                            </xsl:for-each>
                        </listBibl>
                    </div>
                    
                    <div>
                        <head>Ereignisse</head>
                        <listEvent>
                            <xsl:for-each select="$register/tei:list[23]/tei:item | $register/tei:list[48]/tei:item">
                                <xsl:sort select="." order="ascending" />
                                <xsl:variable name="id" select="@xml:id"/>
                                <event xml:id="{@xml:id}">
                                    <label>
                                        <xsl:value-of select="text()[not(/tei:list[@type = 'additional'])]"/>
                                    </label>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'gnd']">
                                        <idno type="GND">
                                            <xsl:value-of select="normalize-space(./tei:list[@type = 'additional']/tei:item[@n = 'gnd']/text())"/>
                                        </idno>
                                    </xsl:if>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']">
                                        <note>
                                            <xsl:value-of select="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']/text()"/>
                                        </note>
                                    </xsl:if>
                                    <xsl:apply-templates select="key('anchorsByAna', $id)"/>
                                </event>
                            </xsl:for-each>
                        </listEvent>
                    </div>
                    
                    <div>
                        <head>Objekte</head>
                        <listObject>
                            <xsl:for-each select="$register/tei:list[67]/tei:item">
                                <xsl:sort select="." order="ascending" />
                                <xsl:variable name="id" select="@xml:id"/>
                                <object xml:id="{@xml:id}">
                                    <objectIdentifier>
                                        <objectName>
                                        <xsl:value-of select="text()[not(/tei:list[@type = 'additional'])]"/>
                                        </objectName>
                                    </objectIdentifier>
                                    <xsl:if test="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']">
                                        <note>
                                            <xsl:value-of select="./tei:list[@type = 'additional']/tei:item[@n = 'lmbem']/text()"/>
                                        </note>
                                    </xsl:if>
                                    <xsl:apply-templates select="key('anchorsByAna', $id)"/>
                                </object>
                            </xsl:for-each>
                        </listObject>
                    </div>
                </div>
            </body>
        </text>
        </TEI>
    </xsl:template>
    
    <xsl:template match="tei:anchor[@type='b']">
        <link xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="target">
                <xsl:text>text_fud.xml#</xsl:text>
                <xsl:value-of select="@xml:id"/>
            </xsl:attribute>
        </link>
    </xsl:template>

</xsl:stylesheet>

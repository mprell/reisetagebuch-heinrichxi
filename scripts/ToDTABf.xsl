<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:dta="http://www.example.de/xsl-func/" exclude-result-prefixes="#all">
    <xsl:output encoding="UTF-8" method="xml" xml:space="preserve" indent="no"/>
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:variable name="replaceStuff"><!--Verschieben der lb-Elemente vom Anfang einer Zeile an das Ende der vorherigen Zeile -->
        <replacements>
            <replacement>
                <search>\n(\s+)&lt;lb(.*?)/&gt;</search>
                <replace>&lt;lb/&gt;&#10;$1</replace>
            </replacement>
        </replacements>
    </xsl:variable>
    
    <xsl:function name="dta:listReplace">
        <xsl:param name="param1" as="xs:string"/>
        <xsl:param name="param2" as="xs:decimal"/>
        <xsl:param name="replace"/>
        <xsl:choose>
            <xsl:when test="count($replace//replacement) = $param2">
                <xsl:if test="$replace//replacement[$param2]/search">
                    <xsl:sequence select="replace($param1, $replace//replacement[$param2]/search, $replace//replacement[$param2]/replace, 'm')"/>
                </xsl:if>
            </xsl:when>
            <xsl:otherwise>
                <xsl:if test="$replace//replacement[$param2]/search">
                    <xsl:sequence select="dta:listReplace(replace($param1, $replace//replacement[$param2]/search, $replace//replacement[$param2]/replace, 'm'), $param2 + 1, $replace)"/>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>
    
    <xsl:template match="/">
        <xsl:text>&#10;</xsl:text>
        <xsl:processing-instruction name="xml-model">href="https://www.deutschestextarchiv.de/doku/basisformat/basisformat_ms.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"</xsl:processing-instruction>
        <xsl:text>&#10;</xsl:text>
        <xsl:processing-instruction name="xml-model">href="https://www.deutschestextarchiv.de/doku/basisformat/basisformat_ms.rng" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"</xsl:processing-instruction>
        <xsl:text>&#10;</xsl:text>
        <xsl:variable name="serialize">
            <xsl:copy-of select="."/>
        </xsl:variable> 
        <xsl:variable name="text" select="dta:listReplace(serialize($serialize), 1, $replaceStuff)"/>
        <xsl:apply-templates select="parse-xml-fragment($text)/node()"/>
    </xsl:template>

    <!--<xsl:template match="processing-instruction()"/>-->
    
    <xsl:template match="comment()"/>
    
    <xsl:template match="tei:teiHeader">
        
        <xsl:variable name="allText1" select="normalize-space(//tei:text)"/>
        <xsl:variable name="tokens" select="tokenize($allText1, '\s+')"/>
        <xsl:variable name="uniqueWords" as="xs:string*" select="distinct-values($tokens)"/>
        <xsl:variable name="allText2" select="string-join(//tei:text//text(), '')"/>
        <xsl:variable name="header" select="document('../result/header_dtabf.xml')" />
        
        <teiHeader xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:text>&#10;      </xsl:text>
            <fileDesc xmlns="http://www.tei-c.org/ns/1.0">
                <xsl:text>&#10;         </xsl:text>
                <xsl:copy-of select="$header//tei:teiHeader/tei:fileDesc/tei:titleStmt"/>
                <xsl:text>&#10;         </xsl:text>
                <xsl:copy-of select="$header//tei:teiHeader/tei:fileDesc/tei:editionStmt"/>
                <xsl:text>&#10;         </xsl:text>
                <extent xmlns="http://www.tei-c.org/ns/1.0">
                    <xsl:text>&#10;            </xsl:text>
                    <measure type="images" xmlns="http://www.tei-c.org/ns/1.0">
                        <!--<xsl:value-of select="count(//tei:pb[@facs])"/>-->
                    </measure>
                    <xsl:text>&#10;            </xsl:text>
                    <measure type="tokens" xmlns="http://www.tei-c.org/ns/1.0">
                        <!--<xsl:value-of select="count($tokens)"/>-->
                    </measure>
                    <xsl:text>&#10;            </xsl:text>
                    <measure type="types" xmlns="http://www.tei-c.org/ns/1.0">
                        <!--<xsl:value-of select="count($uniqueWords)"/>-->
                    </measure>
                    <xsl:text>&#10;            </xsl:text>
                    <measure type="characters" xmlns="http://www.tei-c.org/ns/1.0">
                        <!--<xsl:value-of select="string-length($allText2)"/>-->
                    </measure>
                    <xsl:text>&#10;         </xsl:text>
                </extent>
                <xsl:text>&#10;         </xsl:text>
                <xsl:copy-of select="$header//tei:teiHeader/tei:fileDesc/tei:publicationStmt"/>
                <xsl:text>&#10;         </xsl:text>
                <xsl:copy-of select="$header//tei:teiHeader/tei:fileDesc/tei:notesStmt"/>
                <xsl:text>&#10;         </xsl:text>
                <xsl:copy-of select="$header//tei:teiHeader/tei:fileDesc/tei:sourceDesc"/>
                <xsl:text>&#10;      </xsl:text>
            </fileDesc>
            <xsl:text>&#10;      </xsl:text>
            <xsl:copy-of select="$header//tei:teiHeader/tei:encodingDesc"/>
            <xsl:text>&#10;      </xsl:text>
            <xsl:copy-of select="$header//tei:teiHeader/tei:profileDesc"/>
            <xsl:text>&#10;   </xsl:text>
        </teiHeader>
    </xsl:template>
    
    <xsl:template match="tei:rs">
        <xsl:choose>
            <xsl:when test="@type='person'">
                <xsl:element name="persName" xmlns="http://www.tei-c.org/ns/1.0">
                    <xsl:copy-of select="@xml:id"/>
                    <xsl:copy-of select="@corresp"/>
                    <xsl:copy-of select="@ref"/>
                    <xsl:apply-templates select="./child::node()"/>
                </xsl:element>
            </xsl:when>
            <xsl:when test="@type='place'">
                <xsl:element name="placeName" xmlns="http://www.tei-c.org/ns/1.0">
                    <xsl:copy-of select="@xml:id"/>
                    <xsl:copy-of select="@corresp"/>
                    <xsl:copy-of select="@ref"/>
                    <xsl:apply-templates select="./child::node()"/>
                </xsl:element>
            </xsl:when>
            <xsl:when test="@type='organisation'">
                <xsl:element name="orgName" xmlns="http://www.tei-c.org/ns/1.0">
                    <xsl:copy-of select="@xml:id"/>
                    <xsl:copy-of select="@corresp"/>
                    <xsl:copy-of select="@ref"/>
                    <xsl:apply-templates select="./child::node()"/>
                </xsl:element>
            </xsl:when>
            <xsl:when test="@type='artificialWork'">
                <xsl:element name="name" xmlns="http://www.tei-c.org/ns/1.0">
                    <xsl:attribute name="type">
                        <xsl:text>artificialWork</xsl:text>
                    </xsl:attribute>
                    <xsl:copy-of select="@xml:id"/>
                    <xsl:copy-of select="@corresp"/>
                    <xsl:copy-of select="@ref"/>
                    <xsl:apply-templates select="./child::node()"/>
                </xsl:element>
            </xsl:when>
            <xsl:when test="@type='bibl'">
                <xsl:element name="name" xmlns="http://www.tei-c.org/ns/1.0">
                    <xsl:attribute name="type">
                        <xsl:text>artificialWork</xsl:text>
                    </xsl:attribute>
                    <xsl:copy-of select="@xml:id"/>
                    <xsl:copy-of select="@corresp"/>
                    <xsl:copy-of select="@ref"/>
                    <xsl:apply-templates select="./child::node()"/>
                </xsl:element>
            </xsl:when>
            <xsl:when test="@type='mythicalPerson'">
                <xsl:element name="persName" xmlns="http://www.tei-c.org/ns/1.0">
                    <xsl:copy-of select="@xml:id"/>
                    <xsl:copy-of select="@corresp"/>
                    <xsl:copy-of select="@ref"/>
                    <xsl:apply-templates select="./child::node()"/>
                </xsl:element>
            </xsl:when>
            <xsl:when test="@type='mythicalPlace'">
                <xsl:element name="placeName" xmlns="http://www.tei-c.org/ns/1.0">
                    <xsl:copy-of select="@xml:id"/>
                    <xsl:copy-of select="@corresp"/>
                    <xsl:copy-of select="@ref"/>
                    <xsl:apply-templates select="./child::node()"/>
                </xsl:element>
            </xsl:when>
            <xsl:when test="@type='group'">
                <xsl:element name="name" xmlns="http://www.tei-c.org/ns/1.0">
                    <xsl:attribute name="type">
                        <xsl:text>subjectIndexTerm</xsl:text>
                    </xsl:attribute>
                    <xsl:copy-of select="@xml:id"/>
                    <xsl:copy-of select="@corresp"/>
                    <xsl:copy-of select="@ref"/>
                    <xsl:apply-templates select="./child::node()"/>
                </xsl:element>
            </xsl:when>
            <xsl:when test="@type='event'">
                <xsl:element name="name" xmlns="http://www.tei-c.org/ns/1.0">
                    <xsl:attribute name="type">
                        <xsl:text>subjectIndexTerm</xsl:text>
                    </xsl:attribute>
                    <xsl:copy-of select="@xml:id"/>
                    <xsl:copy-of select="@corresp"/>
                    <xsl:copy-of select="@ref"/>
                    <xsl:apply-templates select="./child::node()"/>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="./child::node()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="tei:lb[position() > 1]">
        <xsl:choose>
            <xsl:when test=".[preceding-sibling::*[1][self::tei:pb | self::tei:fw]]">
            </xsl:when>
            <xsl:otherwise>
                <xsl:element name="{name()}" xmlns="http://www.tei-c.org/ns/1.0">
                    <!-- <xsl:attribute name="n"><!-\-Zeilenzählung einfügen-\->
                        <xsl:number level="any" count="lb" format="00000"/>
                        </xsl:attribute>-->
                </xsl:element>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="tei:lb[1][not(parent::tei:p | parent::tei:head)]"><!--falls lb in einem weiteren Element verschachtelt ist, bspw. hi oder rs-->
        <xsl:element name="{name()}" xmlns="http://www.tei-c.org/ns/1.0"/>
    </xsl:template>
    
    <xsl:template match="tei:lb[1][parent::tei:p | parent::tei:head]">
    </xsl:template>
    
    <xsl:template match="tei:g">
        <xsl:text>-</xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:p[ancestor::tei:text]">
        <xsl:element name="{name()}" xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:apply-templates select="./child::node()"/>
        </xsl:element>
        <xsl:element name="lb" xmlns="http://www.tei-c.org/ns/1.0">
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:head">
        <xsl:element name="{name()}" xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:copy-of select="@*"/>
            <xsl:apply-templates select="./child::node()"/>
        </xsl:element>
        <xsl:element name="lb" xmlns="http://www.tei-c.org/ns/1.0">
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:fw">
        <xsl:element name="{name()}" xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:copy-of select="@*"/>
            <xsl:apply-templates select="./child::node()"/>
        </xsl:element>
        <xsl:element name="lb" xmlns="http://www.tei-c.org/ns/1.0">
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:metamark">
        <xsl:element name="{name()}" xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:apply-templates select="./child::node()"/>
        </xsl:element>
        <xsl:element name="lb" xmlns="http://www.tei-c.org/ns/1.0">
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:add[@place='bottom']">
        <xsl:element name="{name()}" xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="place">
                <xsl:text>sublinear</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates select="./child::node()"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:pb">
        <xsl:element name="{name()}" xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:copy-of select="@*"/>
        </xsl:element>
        <!--<xsl:text>&#10;                  </xsl:text>
        <supplied xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:text>&#10;                     </xsl:text>
            <ref xmlns="http://www.tei-c.org/ns/1.0">
                <xsl:attribute name="target">
                    <xsl:text>https://collections.thulb.uni-jena.de/rsc/viewer/HisBest_derivate_00023562/Reise_Diarium_Franckreich_und_Italien_</xsl:text>
                    <xsl:value-of select="substring-after(@facs, '#f0')"/>
                    <xsl:text>.tif</xsl:text>
                </xsl:attribute>
            </ref>
            <xsl:text>&#10;                     </xsl:text>
        </supplied>-->
    </xsl:template>

</xsl:stylesheet>
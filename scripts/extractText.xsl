<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="#all">
    <xsl:output encoding="UTF-8" method="xml" xml:space="preserve" indent="yes"/>
    
    <xsl:param name="register" select="/tei:TEI/tei:text/tei:back/tei:div[@n='Freie_Analyse']"/>
    
    <xsl:param name="abkaufl" select="/tei:TEI/tei:text/tei:back/tei:div[@n='Textstellen']"/>
    
    <xsl:template match="/">
        <TEI xmlns="http://www.tei-c.org/ns/1.0" xml:id="quellenedition" corresp="#availability-quellenedition">
            <teiHeader>
                <fileDesc>
                    <titleStmt>
                        <title type="main">Reise Herrn Heinrich d. XI. durch Teutschland Franckr. u. Italien</title>
                        <!--<author>
                            <persName ref="https://d-nb.info/gnd/129906689">
                                <surname>Reuß-Greiz</surname>
                                <forename>Heinrich XI.</forename>
                                <nameLink>von</nameLink>
                                <roleName>Graf</roleName>
                                <genName>Reuß älterer Linie</genName>
                            </persName>
                        </author>-->
                        <author>
                            <persName ref="http://d-nb.info/gnd/140148671">
                                <surname>Geusau</surname>
                                <forename>Anton</forename>
                                <nameLink>von</nameLink>
                            </persName>
                        </author>
                        <respStmt>
                            <persName ref="https://d-nb.info/gnd/108172692X">
                                <surname>Beckus</surname>
                                <forename>Paul</forename>
                            </persName>
                            <resp><note type="remarkResponsibility">Herausgeber</note></resp>
                        </respStmt>
                        <respStmt>
                            <persName ref="https://d-nb.info/gnd/1279225718">
                                <surname>Gruner</surname>
                                <forename>Marita</forename>
                            </persName>
                            <resp><note type="remarkResponsibility">Herausgeber</note></resp>
                        </respStmt>
                        <respStmt>
                            <persName ref="https://d-nb.info/gnd/1193004985">
                                <surname>Grunewald</surname>
                                <forename>Thomas</forename>
                            </persName>
                            <resp><note type="remarkResponsibility">Herausgeber</note></resp>
                        </respStmt>
                        <respStmt>
                            <persName>
                                <surname>Mögelin</surname>
                                <forename>Sabrina</forename>
                            </persName>
                            <resp><note type="remarkResponsibility">Herausgeber</note></resp>
                        </respStmt>
                        <respStmt>
                            <persName ref="https://d-nb.info/gnd/1133022898">
                                <surname>Prell</surname>
                                <forename>Martin</forename>
                            </persName>
                            <resp><note type="remarkResponsibility">Herausgeber</note></resp>
                        </respStmt>
                        <respStmt>
                            <persName>
                                <surname>Prell</surname>
                                <forename>Martin</forename>
                            </persName>
                            <resp><note type="remarkResponsibility">Herausgeber</note></resp>
                        </respStmt>
                        <respStmt>
                            <persName>
                                <surname>Jungmann</surname>
                                <forename>Saskia</forename>
                            </persName>
                            <resp><note type="remarkResponsibility">Mitarbeit</note></resp>
                        </respStmt>
                        <respStmt>
                            <persName>
                                <surname>Schröder</surname>
                                <forename>Nikolas</forename>
                            </persName>
                            <resp><note type="remarkResponsibility">Mitarbeit</note></resp>
                        </respStmt>
                        <respStmt>
                            <persName>
                                <surname>Lewen</surname>
                                <forename>Andreas</forename>
                            </persName>
                            <resp><note type="remarkResponsibility">Mitarbeit</note></resp>
                        </respStmt>
                        <respStmt>
                            <orgName ref="https://www.uni-jena.de" xml:id="FSU">Lehrstuhl für Geschlechtergeschichte der Friedrich-Schiller-Universität Jena</orgName>
                            <resp>
                                <note type="remarkResponsibility">Projektträger</note>
                            </resp>
                        </respStmt>
                        <respStmt xml:id="bq-1" corresp="#availability-bq-1">
                            <orgName>Thüringer Universitäts- und Landesbibliothek Jena
                            </orgName>
                            <resp ref="https://www.thulb.uni-jena.de/home" xml:id="THULB">
                                <note type="remarkResponsibility">Bilddigitalisierung von Editionsvorlage und deren Abschrift sowie Bereitstellung der Digitalisate</note>
                                <ref target="https://nbn-resolving.org/urn:nbn:de:urmel-hisbest-235620"/>
                                <ref target="https://nbn-resolving.org/urn:nbn:de:urmel-hisbest-235636"/>
                            </resp>
                        </respStmt>
                        <respStmt xml:id="tq-1" corresp="#availability-tq-1">
                            <orgName ref="http://www.sommerpalais-greiz.de" xml:id="SBKS">Staatliche Bücher- und Kupferstichsammlung Greiz</orgName>
                            <resp>
                                <note type="remarkResponsibility">Bereitstellen der Digitalisierungsvorlagen</note>
                            </resp>
                        </respStmt>
                    </titleStmt>
                    <editionStmt><edition>Vollständige digitalisierte Ausgabe.</edition></editionStmt>
                    <extent>
                        <measure type="images">784</measure>
                        <measure type="tokens"><!--tba--></measure>
                        <measure type="types"><!--tba--></measure>
                        <measure type="characters"><!--tba--></measure>
                    </extent>
                    <publicationStmt>
                        <publisher xml:id="DTACorpusPublisher">
                            <email>dta@bbaw.de</email>
                            <orgName role="project">Deutsches Textarchiv</orgName>
                            <orgName role="hostingInstitution" xml:lang="en">Berlin-Brandenburg Academy of Sciences and Humanities (BBAW)</orgName>
                            <orgName role="hostingInstitution" xml:lang="de">Berlin-Brandenburgische Akademie der Wissenschaften (BBAW)</orgName>
                            <address>
                                <addrLine>Jägerstr. 22/23, 10117 Berlin</addrLine>
                                <country>Germany</country>
                            </address>
                        </publisher>
                        <pubPlace>Berlin</pubPlace>
                        <date type="publication"><!--tba--></date>
                        <availability xml:id="availability-quellenedition" corresp="#quellenedition">
                            <licence target="https://creativecommons.org/licenses/by/4.0/">
                                <p>Namensnennung 4.0 International (CC BY 4.0)</p>
                            </licence>
                        </availability>
                        <availability xml:id="availability-tq-1" corresp="#tq-1">
                            <licence>
                                <p>Alle Rechte vorbehalten.</p>
                            </licence>
                        </availability>
                        <availability xml:id="availability-bq-1" corresp="#bq-1">
                            <licence target="https://creativecommons.org/licenses/by-nc-sa/4.0/">
                                <p>CC BY-NC-SA 4.0</p>
                            </licence>
                        </availability>
                        <idno>
                            <idno type="URLWeb"><!--@Frank: Name iO?-->
                                https://www.deutschestextarchiv.de/reisetagebuch_heinrichxi_reuss_1740
                            </idno>
                            <idno type="URLXML">
                                https://www.deutschestextarchiv.de/book/download_xml/reisetagebuch_heinrichxi_reuss_1740
                            </idno>
                            <idno type="URLHTML">
                                https://www.deutschestextarchiv.de/book/download_html/reisetagebuch_heinrichxi_reuss_1740
                            </idno>
                            <idno type="URLText">
                                https://www.deutschestextarchiv.de/book/download_text/reisetagebuch_heinrichxi_reuss_1740
                            </idno>
                            <idno type="DTADirName">reisetagebuch_heinrichxi_reuss_1740</idno>
                            <idno type="DTAID"></idno>
                            <idno type="URN"></idno>
                        </idno>
                    </publicationStmt>
                    <sourceDesc>
                        <bibl type="MAN">Geusau, Anton von: Reise Herrn Heinrich d. XI. durch Teutschland Franckr. u. Italien [1740-1742].</bibl>
                        <biblFull>
                            <titleStmt>
                                <title level="m" type="main">Reise Herrn Heinrich d. XI. durch Teutschland Franckr. u. Italien [1740-1742].</title>
                                <author>
                                    <persName ref="http://d-nb.info/gnd/140148671">
                                        <surname>Geusau</surname>
                                        <forename>Anton</forename>
                                        <nameLink>von</nameLink>
                                    </persName>
                                </author>
                            </titleStmt>
                            <editionStmt>
                                <edition n="1"/>
                            </editionStmt>
                            <publicationStmt>
                                <publisher/>
                                <pubPlace>[Greiz (Thüringen)]</pubPlace>
                                <date type="publication">[1742]</date>
                            </publicationStmt>
                        </biblFull>
                        <msDesc>
                            <msIdentifier>
                                <repository>Staatliche Bücher- und Kupferstichsammlung Greiz</repository>
                                <idno>
                                    <idno type="shelfmark">DB 2316</idno>
                                    <idno type="URLCatalogue">https://nbn-resolving.org/urn:nbn:de:urmel-hisbest-235620</idno>
                                    <idno type="URLImages">https://nbn-resolving.org/urn:nbn:de:urmel-hisbest-235620-8-0016</idno>
                                </idno>
                            </msIdentifier>
                            <physDesc>
                                <handDesc>
                                    <p>Handschrift</p>
                                </handDesc>
                            </physDesc>
                        </msDesc>
                    </sourceDesc>
                </fileDesc>
                <encodingDesc>
                    <editorialDecl>
                        <p>
                            Bogensignaturen: keine Angabe;
                            Druckfehler: keine Angabe;
                            fremdsprachliches Material: nicht markiert;
                            Geminations-/Abkürzungsstriche: mnarkiert, expandiert;
                            Hervorhebungen (Antiqua, Sperrschrift, Kursive etc.): nicht markiert;
                            i/j in Fraktur: Lautwert transkribiert;
                            I/J in Fraktur: Lautwert transkribiert;
                            Kolumnentitel: keine Angabe;
                            Kustoden: keine Angabe;
                            langes s (ſ): als s transkribiert;
                            Normalisierungen: keine;
                            rundes r (&amp;#xa75b;): als r/et transkribiert;
                            Seitenumbrüche markiert: ja;
                            Silbentrennung: wie Vorlage;
                            u/v bzw. U/V: Lautwert transkribiert;
                            Vokale mit übergest. e: als ä/ö/ü transkribiert;
                            Vollständigkeit: vollständig erfasst;
                            Zeichensetzung: DTABf-getreu;
                            Zeilenumbrüche markiert: ja;
                        </p>
                    </editorialDecl>
                    <tagsDecl><!--tba--></tagsDecl>
                </encodingDesc>
                <profileDesc>
                    <langUsage>
                        <language ident="deu">(Früh-)Neuhochdeutsch</language>
                        <language ident="deu">German</language>
                        <language ident="fra">French</language>
                    </langUsage>
                    <textClass>
                        <classCode scheme="http://www.deutschestextarchiv.de/doku/klassifikation#DTACorpus">dtae</classCode>
                        <classCode scheme="https://www.deutschestextarchiv.de/doku/klassifikation#dwds1main">Gebrauchsliteratur</classCode>
                        <classCode scheme="https://www.deutschestextarchiv.de/doku/klassifikation#dwds1sub">Reiseliteratur</classCode>
                        <xsl:comment><classCode scheme="">DDC</classCode></xsl:comment><!--ToDO-->
                    </textClass>
                </profileDesc>
            </teiHeader>
            <text>
                <body>
                    <div>
                        <xsl:apply-templates/>
                    </div>
                </body>
            </text>
        </TEI>
    </xsl:template>
    
    <xsl:template match="tei:lb">
        <xsl:text>&#10;</xsl:text>
        <lb xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="xml:id"><!--Zeilenzählung einfügen-->
                <xsl:text>lb</xsl:text>
                <xsl:number level="any" count="tei:lb" format="00000"/>
            </xsl:attribute>
        </lb>
    </xsl:template>
    
    <!-- TEXTKRITISCHE Kodierungen -->
    
    <!-- Unleserliches oder Verlorenes (Textknoten durch leeren gap-Knoten ersetzen) -->
    <!-- Template to skip text nodes and any other nodes between the matched anchors -->
    <xsl:template match="node()[preceding-sibling::node()[1][self::tei:anchor[@ana='regID_103.lemID_3261' and @type='b']]]">
        <xsl:text disable-output-escaping="yes">&lt;gap reason="illegible"/&gt;</xsl:text>
    </xsl:template>
    <!-- Template to match the end anchor and skip it -->
    <xsl:template match="tei:anchor[@ana='regID_103.lemID_3261' and @type='e']">
    </xsl:template>
    
    <xsl:template match="node()[preceding-sibling::node()[1][self::tei:anchor[@ana='regID_103.lemID_3262' and @type='b']]]">
        <xsl:text disable-output-escaping="yes">&lt;gap reason="lost"/&gt;</xsl:text>
    </xsl:template>
    <!-- Template to match the end anchor and skip it -->
    <xsl:template match="tei:anchor[@ana='regID_103.lemID_3262' and @type='e']">
    </xsl:template>
    
    
    <xsl:template match="tei:anchor[@type='b' and @ana and @xml:id][not(@ana='regID_103.lemID_3261' or @ana='regID_103.lemID_3262')]">
        <xsl:variable name="analyze" select="@ana"/>
        <xsl:variable name="xml_id" select="@xml:id"/>
        
        <!-- öffne choice-Element vor der Abkürzung an Stelle des leeren Anfangs-Anchor-Tag, sofern zur Abkürzung eine Auflösung vorhanden ist -->
        <xsl:if test="ancestor::tei:body/following-sibling::tei:back/tei:div[@n='Textstellen']/tei:list/tei:item[@corresp[contains(., $xml_id)]]">
            <xsl:text disable-output-escaping="yes">&lt;choice&gt;</xsl:text>
        </xsl:if>
        
        <!-- öffne abbr-Element vor der Abkürzung (hat entweder ana="regID_103.lemID_3255" (mit Auflösung) oder regID_103.lemID_3256 (ohne Auflösung) an Stelle des leeren Anfangs-Anchor-Tags -->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3255'] | .[@ana = 'regID_103.lemID_3256']">
            <xsl:text disable-output-escaping="yes">&lt;abbr&gt;</xsl:text>
        </xsl:for-each>
        
        <!--Foliierung-->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3263']">
            <xsl:text disable-output-escaping="yes">&lt;fw type="folNum" place="top"&gt;</xsl:text>
        </xsl:for-each>
        
        <!--Überflüssig-->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3254']">
            <xsl:text disable-output-escaping="yes"></xsl:text>
        </xsl:for-each>
        
        <!--Einfügungen-->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3264']">
            <xsl:text disable-output-escaping="yes">&lt;add place="left"&gt;</xsl:text>
        </xsl:for-each>
        <!--<xsl:for-each select=".[@ana = 'regID_103.lemID_3265']">
            <xsl:text disable-output-escaping="yes">&lt;add place="top"&gt;</xsl:text>
            <!-\-top nicht im DTABf enthalten-\->
        </xsl:for-each>-->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3266']">
            <xsl:text disable-output-escaping="yes">&lt;add place="right"&gt;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3267']">
            <xsl:text disable-output-escaping="yes">&lt;add place="bottom"&gt;</xsl:text>
            <!--bottom nicht im DTABf enthalten-->
        </xsl:for-each>
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3268']">
            <xsl:text disable-output-escaping="yes">&lt;add place="intralinear"&gt;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3269']">
            <xsl:text disable-output-escaping="yes">&lt;add place="across"&gt;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3270']">
            <xsl:text disable-output-escaping="yes">&lt;add place="superlinear"&gt;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3271']">
            <xsl:text disable-output-escaping="yes">&lt;add place="sublinear"&gt;</xsl:text>
        </xsl:for-each>
        
        <!--Unterstreichungen-->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3285']">
            <xsl:text disable-output-escaping="yes">&lt;hi rendition="#u"&gt;</xsl:text>
        </xsl:for-each>
        
        <!--Editorische Anmerkung-->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3291']">
            <xsl:text disable-output-escaping="yes">&lt;note type="editorial"&gt;</xsl:text>
        </xsl:for-each>
        
        <!--Editorische Ergänzung-->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3292']">
            <xsl:text disable-output-escaping="yes">&lt;supplied reason="damage"&gt;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3293']">
            <xsl:text disable-output-escaping="yes">&lt;supplied reason="covered"&gt;</xsl:text>
        </xsl:for-each>
        
        <!--Streichung Ergänzung-->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3300']">
            <xsl:text disable-output-escaping="yes">&lt;del rendition="#s"&gt;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3301']">
            <xsl:text disable-output-escaping="yes">&lt;del rendition="#ow"&gt;</xsl:text>
        </xsl:for-each>
        
        <!--Unsichere Lesart-->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3302'] | .[@ana = 'regID_103.lemID_3303']">
            <xsl:text disable-output-escaping="yes">&lt;unclear reason="illegible"&gt;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3304']">
            <xsl:text disable-output-escaping="yes">&lt;unclear reason="covered"&gt;</xsl:text>
        </xsl:for-each>
        
        <!--vertikal verlaufender Text-->
        <xsl:for-each select=".[@ana = 'regID_107.lemID_3340']">
            <xsl:text disable-output-escaping="yes">&lt;hi rendition="#v"&gt;</xsl:text>
        </xsl:for-each>
        
        <!--Textstruktur-->
        <!-- Abbildungen -->
        <xsl:for-each select=".[@ana = 'regID_102.lemID_3114']">
            <xsl:text disable-output-escaping="yes">&lt;figure&gt;&#10;&lt;figDesc&gt;</xsl:text>
        </xsl:for-each>
        
        <!--ENTITAETEN-Kodierungen-->
        
        <!-- öffne placeName-Element vor dem Namen an Stelle des leeren Anfangs-Anchor-Tag -->
        <!-- DTABf: in placeName umwandeln-->
        <xsl:for-each select="$register/tei:list[45]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;rs type="place"</xsl:text>
            <xsl:text> corresp="register_tei.xml#</xsl:text>
            <xsl:value-of select="$analyze"/>
            <xsl:text>" xml:id="</xsl:text>
            <xsl:value-of select="$xml_id"/>
            <xsl:text>"</xsl:text>
            <!-- ref-Attribut mit Link zu GND einfügen, sofern GND-Link vorhanden -->
            <xsl:if test="./tei:list[@type='additional']/tei:item[@n='gnd']">
                <xsl:text> ref="http://d-nb.info/gnd/</xsl:text>
                <xsl:value-of select="normalize-space(./tei:list[@type='additional']/tei:item[@n='gnd']/text())"/>
                <xsl:text disable-output-escaping="yes">"</xsl:text>
            </xsl:if>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- öffne persName-Element vor dem Personennamen an Stelle des leeren Anfangs-Anchor-Tag -->
        <!-- DTABf: in placeName umwandeln-->
        <xsl:for-each select="$register/tei:list[18]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;rs type="person"</xsl:text>
            <xsl:text> corresp="register_tei.xml#</xsl:text>
            <xsl:value-of select="$analyze"/>
            <xsl:text>" xml:id="</xsl:text>
            <xsl:value-of select="$xml_id"/>
            <xsl:text>"</xsl:text>
            <!-- ref-Attribut mit Link zu GND einfügen, sofern GND-Link vorhanden -->
            <xsl:if test="./tei:list[@type='additional']/tei:item[@n='gnd']">
                <xsl:text> ref="http://d-nb.info/gnd/</xsl:text>
                <xsl:value-of select="normalize-space(./tei:list[@type='additional']/tei:item[@n='gnd']/text())"/>
                <xsl:text disable-output-escaping="yes">"</xsl:text>
            </xsl:if>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- öffne orgName-Element vor dem Organisationennamen an Stelle des leeren Anfangs-Anchor-Tag -->
        <!-- DTABf: in orgName umwandeln-->
        <xsl:for-each select="$register/tei:list[19]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;rs type="organisation"</xsl:text>
            <xsl:text> corresp="register_tei.xml#</xsl:text>
            <xsl:value-of select="$analyze"/>
            <xsl:text>" xml:id="</xsl:text>
            <xsl:value-of select="$xml_id"/>
            <xsl:text>"</xsl:text>
            <!-- ref-Attribut mit Link zu GND einfügen, sofern GND-Link vorhanden -->
<xsl:if test="./tei:list[@type='additional']/tei:item[@n='gnd']">
            <xsl:text> ref="http://d-nb.info/gnd/</xsl:text>
            <xsl:value-of select="normalize-space(./tei:list[@type='additional']/tei:item[@n='gnd']/text())"/>
            <xsl:text disable-output-escaping="yes">"</xsl:text>
        </xsl:if>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- öffne name-Element vor dem Objektnamen an Stelle des leeren Anfangs-Anchor-Tag -->
        <!-- DTABf: in name umwandeln-->
        <xsl:for-each select="$register/tei:list[67]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;rs type="artificialWork"</xsl:text>
            <xsl:text> corresp="register_tei.xml#</xsl:text>
            <xsl:value-of select="$analyze"/>
            <xsl:text>" xml:id="</xsl:text>
            <xsl:value-of select="$xml_id"/>
            <xsl:text>"</xsl:text>
            <!-- ref-Attribut mit Link zu GND einfügen, sofern GND-Link vorhanden -->
            <xsl:if test="./tei:list[@type='additional']/tei:item[@n='gnd']">
                <xsl:text> ref="http://d-nb.info/gnd/</xsl:text>
                <xsl:value-of select="normalize-space(./tei:list[@type='additional']/tei:item[@n='gnd']/text())"/>
                <xsl:text disable-output-escaping="yes">"</xsl:text>
            </xsl:if>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- öffne Gruppennamen-Element vor dem Gruppennamen an Stelle des leeren Anfangs-Anchor-Tag -->
        <!-- DTABf/ehd: hat kein element für Gruppen-->
        <xsl:for-each select="$register/tei:list[68]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;rs type="group"</xsl:text>
            <xsl:text> corresp="register_tei.xml#</xsl:text>
            <xsl:value-of select="$analyze"/>
            <xsl:text>" xml:id="</xsl:text>
            <xsl:value-of select="$xml_id"/>
            <xsl:text>"</xsl:text>
            <!-- ref-Attribut mit Link zu GND einfügen, sofern GND-Link vorhanden -->
            <xsl:if test="./tei:list[@type='additional']/tei:item[@n='gnd']">
                <xsl:text> ref="http://d-nb.info/gnd/</xsl:text>
                <xsl:value-of select="normalize-space(./tei:list[@type='additional']/tei:item[@n='gnd']/text())"/>
                <xsl:text disable-output-escaping="yes">"</xsl:text>
            </xsl:if>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- öffne MythischePersönlichkeiten-Element vor dem Namen an Stelle des leeren Anfangs-Anchor-Tag -->
        <!-- DTABf/ehd: hat kein element für mythische Personen-->
        <xsl:for-each select="$register/tei:list[69]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;rs type="mythicalPerson"</xsl:text>
            <xsl:text> corresp="register_tei.xml#</xsl:text>
            <xsl:value-of select="$analyze"/>
            <xsl:text>" xml:id="</xsl:text>
            <xsl:value-of select="$xml_id"/>
            <xsl:text>"</xsl:text>
            <!-- ref-Attribut mit Link zu GND einfügen, sofern GND-Link vorhanden -->
            <xsl:if test="./tei:list[@type='additional']/tei:item[@n='gnd']">
                <xsl:text> ref="http://d-nb.info/gnd/</xsl:text>
                <xsl:value-of select="normalize-space(./tei:list[@type='additional']/tei:item[@n='gnd']/text())"/>
                <xsl:text disable-output-escaping="yes">"</xsl:text>
            </xsl:if>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- öffne MythischeGeografika-Element vor dem Namen an Stelle des leeren Anfangs-Anchor-Tag -->
        <!-- DTABf/ehd: hat kein element für mythische Geografika-->
        <xsl:for-each select="$register/tei:list[70]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;rs type="mythicalPlace"</xsl:text>
            <xsl:text> corresp="register_tei.xml#</xsl:text>
            <xsl:value-of select="$analyze"/>
            <xsl:text>" xml:id="</xsl:text>
            <xsl:value-of select="$xml_id"/>
            <xsl:text>"</xsl:text>
            <!-- ref-Attribut mit Link zu GND einfügen, sofern GND-Link vorhanden -->
            <xsl:if test="./tei:list[@type='additional']/tei:item[@n='gnd']">
                <xsl:text> ref="http://d-nb.info/gnd/</xsl:text>
                <xsl:value-of select="normalize-space(./tei:list[@type='additional']/tei:item[@n='gnd']/text())"/>
                <xsl:text disable-output-escaping="yes">"</xsl:text>
            </xsl:if>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- öffne rs-Element vor dem Werknamen an Stelle des leeren Anfangs-Anchor-Tag -->
        <!-- DTABf/ehd: - -->
        <xsl:for-each select="$register/tei:list[22]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;rs type="bibl"</xsl:text>
            <xsl:text> corresp="register_tei.xml#</xsl:text>
            <xsl:value-of select="$analyze"/>
            <xsl:text>" xml:id="</xsl:text>
            <xsl:value-of select="$xml_id"/>
            <xsl:text>"</xsl:text>
            <!-- ref-Attribut mit Link zu GND einfügen, sofern GND-Link vorhanden -->
            <xsl:if test="./tei:list[@type='additional']/tei:item[@n='gnd']">
                <xsl:text> ref="http://d-nb.info/gnd/</xsl:text>
                <xsl:value-of select="normalize-space(./tei:list[@type='additional']/tei:item[@n='gnd']/text())"/>
                <xsl:text disable-output-escaping="yes">"</xsl:text>
            </xsl:if>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- öffne Event-Element vor dem Eventnamen an Stelle des leeren Anfangs-Anchor-Tag -->
        <!-- DTABf/ehd: hat kein event-Element -->
        <xsl:for-each select="$register/tei:list[23]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;rs type="event"</xsl:text>
            <xsl:text> corresp="register_tei.xml#</xsl:text>
            <xsl:value-of select="$analyze"/>
            <xsl:text>" xml:id="</xsl:text>
            <xsl:value-of select="$xml_id"/>
            <xsl:text>"</xsl:text>
            <!-- ref-Attribut mit Link zu GND einfügen, sofern GND-Link vorhanden -->
            <xsl:if test="./tei:list[@type='additional']/tei:item[@n='gnd']">
                <xsl:text> ref="http://d-nb.info/gnd/</xsl:text>
                <xsl:value-of select="normalize-space(./tei:list[@type='additional']/tei:item[@n='gnd']/text())"/>
                <xsl:text disable-output-escaping="yes">"</xsl:text>
            </xsl:if>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="$register/tei:list[48]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;rs type="event"</xsl:text>
            <xsl:text> corresp="register_tei.xml#</xsl:text>
            <xsl:value-of select="$analyze"/>
            <xsl:text>" xml:id="</xsl:text>
            <xsl:value-of select="$xml_id"/>
            <xsl:text>"</xsl:text>
            <!-- ref-Attribut mit Link zu GND einfügen, sofern GND-Link vorhanden -->
            <xsl:if test="./tei:list[@type='additional']/tei:item[@n='gnd']">
                <xsl:text> ref="http://d-nb.info/gnd/</xsl:text>
                <xsl:value-of select="normalize-space(./tei:list[@type='additional']/tei:item[@n='gnd']/text())"/>
                <xsl:text disable-output-escaping="yes">"</xsl:text>
            </xsl:if>
            <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
        </xsl:for-each>
        
    </xsl:template>
    
    <!--Schließende Elemente-->
    <xsl:template match="tei:anchor[@type='e' and @ana and @xml:id][not(@ana='regID_103.lemID_3261' or @ana='regID_103.lemID_3262')]">
        <xsl:variable name="analyze" select="@ana"/>
        <xsl:variable name="xml_id" select="@xml:id"/>
        
        <!-- TEXTKRITISCHE Kodierungen -->
        
        <!-- schließe abbr nach der Abkürzung an Stelle des leeren Ende-Anchor-Tag -->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3255'] | .[@ana = 'regID_103.lemID_3256']">
            <xsl:text disable-output-escaping="yes">&lt;/abbr&gt;</xsl:text>
            
            <!-- füge expan nach abbr ein, wenn eine Auflösung zur Abkürzung vorhanden ist -->
            <xsl:if test="$abkaufl/tei:list/tei:item[@corresp[contains(., $xml_id)]]">
                <xsl:text disable-output-escaping="yes">&lt;expan&gt;</xsl:text>
                <xsl:value-of select="$abkaufl/tei:list/tei:item[@corresp[contains(., $xml_id)]]/tei:list[@type='additional']/tei:item[@n='tkaufloesung']/child::text()"/>
                <xsl:text disable-output-escaping="yes">&lt;/expan&gt;</xsl:text>
                <xsl:text disable-output-escaping="yes">&lt;/choice&gt;</xsl:text>
            </xsl:if>
        </xsl:for-each>
        
        <!--Foliierung-->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3263']">
            <xsl:text disable-output-escaping="yes">&lt;/fw&gt;</xsl:text>
        </xsl:for-each>
        
        <!--Überflüssiges-->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3254']">
            <xsl:text disable-output-escaping="yes"></xsl:text>
        </xsl:for-each>
        
        <!--Einfügungen-->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3264'] | .[@ana = 'regID_103.lemID_3265'] | .[@ana = 'regID_103.lemID_3266'] | .[@ana = 'regID_103.lemID_3267'] | .[@ana = 'regID_103.lemID_3268'] | .[@ana = 'regID_103.lemID_3269'] | .[@ana = 'regID_103.lemID_3270'] | .[@ana = 'regID_103.lemID_3271']">
            <xsl:text disable-output-escaping="yes">&lt;/add&gt;</xsl:text>
        </xsl:for-each>
        
        <!--Unterstreichungen-->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3285']">
            <xsl:text disable-output-escaping="yes">&lt;/hi&gt;</xsl:text>
        </xsl:for-each>
        
        <!--editorische Anmerkung-->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3291']">
            <xsl:text disable-output-escaping="yes">&lt;/note&gt;</xsl:text>
        </xsl:for-each>
        
        <!--editorische Ergänzung-->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3292'] | .[@ana = 'regID_103.lemID_3293']">
            <xsl:text disable-output-escaping="yes">&lt;/supplied&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- Streichungen -->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3300'] | .[@ana = 'regID_103.lemID_3301']">
            <xsl:text disable-output-escaping="yes">&lt;/del&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- Unsichere Lesarten -->
        <xsl:for-each select=".[@ana = 'regID_103.lemID_3302'] | .[@ana = 'regID_103.lemID_3303'] | .[@ana = 'regID_103.lemID_3304']">
            <xsl:text disable-output-escaping="yes">&lt;/unclear&gt;</xsl:text>
        </xsl:for-each>
        
        <!--vertikal verlaufender Text-->
        <xsl:for-each select=".[@ana = 'regID_107.lemID_3340']">
            <xsl:text disable-output-escaping="yes">&lt;/hi&gt;</xsl:text>
        </xsl:for-each>
        
        <!--Textstruktur-->
        <!-- Abbildungen -->
        <xsl:for-each select=".[@ana = 'regID_102.lemID_3114']">
            <xsl:text disable-output-escaping="yes">&lt;/figDesc&gt;&#10;&lt;/figure&gt;</xsl:text>
        </xsl:for-each>
        
        <!--ENTITAETEN-Kodierungen-->
        
        <!-- schließe placeName-Element nach dem Ortsnamen an Stelle des leeren Ende-Anchor-Tag -->
        <xsl:for-each select="$register/tei:list[45]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;/rs&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- schließe orgName-Element nach dem Organisationsnamen an Stelle des leeren Ende-Anchor-Tag -->
        <xsl:for-each select="$register/tei:list[19]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;/rs&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- schließe persName-Element nach dem Namen an Stelle des leeren Ende-Anchor-Tag -->
        <xsl:for-each select="/$register/tei:list[18]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;/rs&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- schließe name-Element nach dem Objektnamen an Stelle des leeren Ende-Anchor-Tag -->
        <xsl:for-each select="$register/tei:list[67]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;/rs&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- schließe Personengruppen-Element nach dem Gruppennamen an Stelle des leeren Ende-Anchor-Tag -->
        <!-- DTABf/ehd: hat kein element für mythische Personen-->
        <xsl:for-each select="$register/tei:list[68]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;/rs&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- schließe MythischePersönlichkeiten-Element nach dem Namen an Stelle des leeren Ende-Anchor-Tag -->
        <!-- DTABf/ehd: hat kein element für mythische Personen-->
        <xsl:for-each select="$register/tei:list[69]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;/rs&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- schließe MythischeGeografika-Element nach dem Namen an Stelle des leeren Ende-Anchor-Tag -->
        <!-- DTABf/ehd: hat kein element für mythische Geografika-->
        <xsl:for-each select="$register/tei:list[70]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;/rs&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- schließe rs-Element nach dem Namen an Stelle des leeren Ende-Anchor-Tag -->
        <xsl:for-each select="$register/tei:list[22]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;/rs&gt;</xsl:text>
        </xsl:for-each>
        
        <!-- schließe Event-Element nach dem Namen an Stelle des leeren Ende-Anchor-Tag -->
        <xsl:for-each select="$register/tei:list[23]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;/rs&gt;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="$register/tei:list[48]/tei:item[@xml:id = $analyze]">
            <xsl:text disable-output-escaping="yes">&lt;/rs&gt;</xsl:text>
        </xsl:for-each>
        
    </xsl:template>
    
    <xsl:template match="tei:hi">
        
        <xsl:if test="starts-with(@rend, 'background:')">
            <xsl:text disable-output-escaping="yes">&lt;hi rendition="#MARKED"&gt;</xsl:text>
            <xsl:apply-templates select="./child::node()"/>
            <xsl:text disable-output-escaping="yes">&lt;/hi&gt;</xsl:text>
        </xsl:if>
        
        <xsl:if test="@rend = 'weight:bold'">
            <xsl:text disable-output-escaping="yes">&lt;hi rendition="#EINFÜGUNG"&gt;</xsl:text>
            <xsl:apply-templates select="./child::node()"/>
            <xsl:text disable-output-escaping="yes">&lt;/hi&gt;</xsl:text>
        </xsl:if>
        
        <xsl:if test="@rend = 'slant:italic'">
            <xsl:text disable-output-escaping="yes">&lt;hi rendition="#EINFÜGUNG"&gt;</xsl:text>
            <xsl:apply-templates select="./child::node()"/>
            <xsl:text disable-output-escaping="yes">&lt;/hi&gt;</xsl:text>
        </xsl:if>
        
        <xsl:if test="@rend = 'family:Times'">
            <xsl:apply-templates select="./child::node()"/>
        </xsl:if>
        
        <xsl:if test="@rend = 'foreground:#000000' or @rend = 'foreground:#00B050'">
            <xsl:text disable-output-escaping="yes">&lt;add place="superlinear"&gt;</xsl:text>
            <xsl:apply-templates select="./child::node()"/>
            <xsl:text disable-output-escaping="yes">&lt;/add&gt;</xsl:text>
        </xsl:if>
        
        <xsl:if test="@rend = 'foreground:#202122' or @rend = 'foreground:#222222' or @rend = 'foreground:#2E74B5' or @rend = 'foreground:#ED7D31' or @rend = 'foreground:red' or @rend = 'foreground:black' or @rend = 'foreground:yellow'">
            <xsl:apply-templates select="./child::node()"/>
        </xsl:if>
        
        <xsl:if test="@rend = 'justify:center'">
            <xsl:text disable-output-escaping="yes">&lt;hi rendition="#c"&gt;</xsl:text>
            <xsl:apply-templates select="./child::node()"/>
            <xsl:text disable-output-escaping="yes">&lt;/hi&gt;</xsl:text>
        </xsl:if>
        
        <xsl:if test="contains(@rend, 'lmargin:')">
            <xsl:text disable-output-escaping="yes">&lt;hi rendition="#c"&gt;</xsl:text>
            <xsl:apply-templates select="./child::node()"/>
            <xsl:text disable-output-escaping="yes">&lt;/hi&gt;</xsl:text>
        </xsl:if>
        
        <xsl:if test="@rend = 'justify:right'">
            <xsl:text disable-output-escaping="yes">&lt;hi rendition="#right"&gt;</xsl:text>
            <xsl:apply-templates select="./child::node()"/>
            <xsl:text disable-output-escaping="yes">&lt;/hi&gt;</xsl:text>
        </xsl:if>
        <xsl:if test="@rend = 'underline:1'">
            <xsl:text disable-output-escaping="yes">&lt;hi rendition="#u"&gt;</xsl:text>
            <xsl:apply-templates select="./child::node()"/>
            <xsl:text disable-output-escaping="yes">&lt;/hi&gt;</xsl:text>
        </xsl:if>
        
        <xsl:if test="@rend = 'overstrike:1'">
            <xsl:text disable-output-escaping="yes">&lt;hi rendition="#s"&gt;</xsl:text>
            <xsl:apply-templates select="./child::node()"/>
            <xsl:text disable-output-escaping="yes">&lt;/hi&gt;</xsl:text>
        </xsl:if>
        
        <xsl:if test="@rend = 'offset:4'">
            <xsl:text disable-output-escaping="yes">&lt;hi rendition="#sup"&gt;</xsl:text>
            <xsl:apply-templates select="./child::node()"/>
            <xsl:text disable-output-escaping="yes">&lt;/hi&gt;</xsl:text>
        </xsl:if>
        
        <xsl:if test="@rend = 'size:10' or @rend = 'size:8'">
            <xsl:text disable-output-escaping="yes">&lt;hi rendition="#smaller"&gt;</xsl:text>
            <xsl:apply-templates select="./child::node()"/>
            <xsl:text disable-output-escaping="yes">&lt;/hi&gt;</xsl:text>
        </xsl:if>
        
        <xsl:if test="@rend = 'size:12'">
            <xsl:apply-templates select="./child::node()"/>
        </xsl:if>
        
    </xsl:template>
    
    <xsl:template match="tei:ref">
        <xsl:element name="{name()}" xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:copy-of select="@*"/>
                <xsl:apply-templates select="./child::node()"/>
            </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='page']">
        <xsl:element name="{name()}" xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:copy-of select="@*"/>
            <xsl:apply-templates select="./child::node()"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:teiHeader">
    </xsl:template>
    
    <xsl:template match="tei:back">
    </xsl:template>
    
    <xsl:template match="tei:pb">
        <xsl:copy-of select="."></xsl:copy-of>
    </xsl:template>
    
    <xsl:template match="tei:p">
        <xsl:choose>
            <xsl:when test="@rendition='#PRSParagraph'">
                <p xmlns="http://www.tei-c.org/ns/1.0">
                    <xsl:apply-templates select="./child::node()"/>
                </p>
            </xsl:when>
            <xsl:when test="@rendition='#PRSHeadline1'">
                <head xmlns="http://www.tei-c.org/ns/1.0">
                    <xsl:apply-templates select="./child::node()"/>
                </head>
            </xsl:when>
            <xsl:otherwise>
                <p xmlns="http://www.tei-c.org/ns/1.0">
                    <xsl:apply-templates select="./child::node()"/>
                </p>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
</xsl:stylesheet>

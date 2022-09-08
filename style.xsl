<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml"> 
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Progetto di Codifica dei Testi: Prolusioni di F. de Saussure</title>
                <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css" />
                <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
                <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
                <link href="stile.css" rel="stylesheet" type="text/css"/>
                <script src="script.js"></script>
            </head>
        
            <body>
                <div id="intestazione">
                    <h1><xsl:value-of select="//tei:title[@type='principale']"/></h1>
                    <h2><xsl:value-of select="//tei:title[@type='sottotitolo']"/></h2>
                    <h3>di <xsl:value-of select="//tei:titleStmt//tei:author"></xsl:value-of></h3>
                    <h4>Progetto condotto da Irene Ivaldi e Ylenia Torino</h4>
                </div>
                <div id="select">
                    <div class="lista">
                        <xsl:element name="a">
                            <xsl:attribute name="href">#intro</xsl:attribute>
                            <xsl:attribute name="id">l_intro</xsl:attribute>
                            Introduzione
                        </xsl:element>
                    </div>
                    <div class="lista">
                        <xsl:element name="a">
                            <xsl:attribute name="href">#pagine</xsl:attribute>
                            <xsl:attribute name="id">l_p15</xsl:attribute>
                            <xsl:attribute name="onclick">show15()</xsl:attribute>
                            Pagina 15
                        </xsl:element>
                    </div>
                    <div class="lista">
                        <xsl:element name="a">
                            <xsl:attribute name="href">#pagine</xsl:attribute>
                            <xsl:attribute name="id">l_p16</xsl:attribute>
                            <xsl:attribute name="onclick">show16()</xsl:attribute>
                            Pagina 16
                        </xsl:element>
                    </div>
                    <div class="lista">
                        <xsl:element name="a">
                            <xsl:attribute name="href">#appendice</xsl:attribute>
                            <xsl:attribute name="id">l_appendice</xsl:attribute>
                            Appendice
                        </xsl:element>
                    </div>
                </div>
                <div id="intro">
                    <div>
                        <div id="info_intro">
                            <div id="info_autore">
                                <xsl:apply-templates select="//tei:listPerson/tei:person[@xml:id='FdS']"/>
                            </div>
                            <div id="img_dS">
                                <xsl:element name="img">
                                    <xsl:attribute name="src">img/de_saussure1.png</xsl:attribute>
                                </xsl:element>
                            </div>
                            <div id="info_pub">
                                <xsl:apply-templates select="//tei:msContents" />
                            </div>
                            <div id="info_desc">
                                <xsl:element name="p">
                                    <xsl:value-of select="//tei:history/tei:summary"></xsl:value-of>
                                    <xsl:value-of select="//tei:history/tei:origin/tei:p"></xsl:value-of>
                                </xsl:element>
                            </div>
                        </div>
                    </div>
                    <div id="descrizione_supporto">
                        <xsl:element name="h3">Descrizione fisica</xsl:element>
                        <xsl:element name="ul">
                            <xsl:element name="li">
                                <xsl:value-of select="//tei:support"></xsl:value-of>
                            </xsl:element>
                            <xsl:element name="li">
                                <xsl:value-of select="//tei:extent"></xsl:value-of>
                            </xsl:element>
                            <xsl:element name="li">
                                <xsl:value-of select="//tei:layout/tei:p"></xsl:value-of>
                            </xsl:element>
                            <xsl:element name="li">
                                <xsl:value-of select="//tei:condition"></xsl:value-of>
                            </xsl:element>
                            <xsl:element name="li">
                                <xsl:value-of select="//tei:handDesc/tei:p"></xsl:value-of>
                            </xsl:element>
                            <xsl:element name="li">
                                <xsl:value-of select="//tei:typeDesc/tei:p"></xsl:value-of>
                            </xsl:element>
                        </xsl:element>
                    </div>
                </div>
                <div id="pagine">
                    <h3 class="p15">Pagina 15</h3>
                    <h3 class="p16">Pagina 16</h3>
                    <div id="cont_elementi">
                        <div id="legenda">
                            <h4>Visualizza fenomeni</h4>
                                <button type="button" id="antroponimo" onclick="mostra_antr()">Antroponimi</button>
                                <button type="button" id="istituzione" onclick="mostra_ist()">Istituzioni</button>
                                <button type="button" id="data" onclick="mostra_date()">Date</button>
                                <button type="button" id="ele_term" onclick="mostra_gloss()">Elementi terminologici</button>
                                <button type="button" id="aggiunte" onclick="mostra_add()">Aggiunte</button>
                                <button type="button" id="abbreviazioni" onclick="mostra_expan()">Abbreviazioni</button>
                                <button type="button" id="cancellazioni" onclick="mostra_del()">Cancellazioni</button>
                                <button type="button" id="sottolineature" onclick="mostra_und()">Sottolineature</button>
                        </div>
                        <div id="cont_testo">
                            <div class="p15">
                                <button type="button" id="mostra_retro15" onclick="mostra_r15()">Mostra retro</button>
                                <button type="button" id="mostra_p16" class="p15" onclick="mostra_p16()">Pagina 16</button>
                                <button type="button" id="mostra_front15" onclick="mostra_15()">Mostra principale</button>
                                <h4>Testo originale</h4>
                                <xsl:apply-templates select="//tei:body/tei:div[@n = '15']" />
                            </div>
                            <div class="p16">
                                <button type="button" id="mostra_retro16" onclick="mostra_r16()">Mostra retro</button>
                                <button type="button" id="mostra_p15" class="p16" onclick="mostra_p15()">Pagina 15</button>
                                <button type="button" id="mostra_front16" onclick="mostra_16()">Mostra principale</button>
                                <h4>Testo originale</h4>
                                <xsl:apply-templates select="//tei:body/tei:div[@n = '16']" />
                            </div>
                        </div>
                        <xsl:apply-templates select="//tei:facsimile" />
                    </div>
                    <div id="traduzione">
                        <div class="p15">
                            <xsl:value-of select="//tei:div[@type='traduzione15']"></xsl:value-of>
                        </div>
                        <div class="p16">
                            <xsl:value-of select="//tei:div[@type='traduzione16']"></xsl:value-of>
                        </div>
                    </div>
                </div>
                <div id="appendice">
                    <xsl:apply-templates select="//tei:listBibl" />
                </div>
            </body>
        </html>
    </xsl:template>

    <!-- Template de Saussure -->
    <xsl:template match="tei:listPerson/tei:person[@xml:id='FdS']">
        <p><b>Nome:</b><xsl:value-of select="//tei:listPerson/tei:person[@xml:id='FdS']/tei:persName"/></p>
        <p><b>Sesso: </b><xsl:value-of select="//tei:sex"/></p>
        <p><b>Ruolo: </b><xsl:value-of select="//tei:listPerson/tei:person[@xml:id='FdS']/tei:occupation"/></p>
        <p><b>Nascita:</b><xsl:value-of select="//tei:birth"/></p>
        <p><b>Morte:</b><xsl:value-of select="//tei:death"/></p>
    </xsl:template>

    <!-- Template msContents -->
    <xsl:template match="tei:msContents">
        <p><b>Titolo:</b><xsl:value-of select="//tei:msItem/tei:title" /></p>
        <p><b>Autore: </b><xsl:value-of select="//tei:docAuthor"/></p>
        <p><b>Lingua: </b><xsl:value-of select="//tei:msItem/tei:textLang" /></p>
        <p><b>Acquisizione:</b><xsl:value-of select="//tei:publicationStmt/tei:publisher" /></p>
        <p><b>Data:</b><xsl:value-of select="//tei:msItem/tei:docImprint/tei:docDate" /></p>
    </xsl:template>
    
    <!-- Template testo originale -->
    <!-- Page beginning --> 
    <xsl:template match="tei:pb">
        <xsl:element name="div">
            <xsl:attribute name="id">pagina_<xsl:value-of select="current()/@n" /></xsl:attribute>
        </xsl:element>
    </xsl:template>
    
    <!-- Line beginning --> 
    <xsl:template match="tei:lb">
        <br />
        <xsl:element name="span">
            <xsl:attribute name="class">numeroRiga</xsl:attribute>
                <xsl:choose>
                    <xsl:when test="contains(@facs, 'p15')">
                        <xsl:attribute name="id">
                            <xsl:value-of select="concat('p15_', @n)"></xsl:value-of>
                        </xsl:attribute>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:attribute name="id">
                            <xsl:value-of select="concat('p16_', @n)"></xsl:value-of>
                        </xsl:attribute>
                    </xsl:otherwise>
                </xsl:choose>
            <b><xsl:value-of select="@n"/></b>
            <xsl:value-of select="text()"/>
        </xsl:element>
    </xsl:template>

    <!-- Antroponimi --> 
    <xsl:template match="tei:ab/tei:persName">
        <xsl:element name="span">
            <xsl:attribute name="class">pers</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- Istituzioni --> 
    <xsl:template match="tei:ab/tei:orgName">
        <xsl:element name="span">
            <xsl:attribute name="class">ist</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- Date --> 
    <xsl:template match="tei:add/tei:date">
        <xsl:element name="span">
            <xsl:attribute name="class">date</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- Aggiunte -->
    <xsl:template match="tei:add">
        <xsl:choose>
            <xsl:when test="current()[@place='left']">
                <xsl:element name="add">
                    <xsl:attribute name="class">add</xsl:attribute>
                    <b>&lt;</b><i>(<xsl:apply-templates/>)</i><b>&gt;</b>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:element name="add">
                    <xsl:attribute name="class">add</xsl:attribute>
                    <b>^</b><i>(<xsl:apply-templates/>)</i>
                </xsl:element>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- Cancellature -->
    <xsl:template match="tei:del">
        <xsl:element name="del">
            <xsl:attribute name="class">del</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- Abbreviazioni -->
    <xsl:template match="tei:abbr">
        <xsl:element name="span">
            <xsl:attribute name="class">abbr</xsl:attribute>
            <xsl:value-of select="current()" />
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:expan">
        <xsl:element name="span">
            <xsl:attribute name="class">expan</xsl:attribute>
            <i><xsl:value-of select="current()" /></i>
        </xsl:element>
    </xsl:template>
    
    <!-- Elementi mancanti --> 
    <xsl:template match="tei:gap">
        <span class="gap">?</span>
    </xsl:template>

    <!-- Sottolineature --> 
    <xsl:template match="tei:emph[@rend = 'underline']">
        <u><xsl:apply-templates /></u>
    </xsl:template>

    <!-- Elementi Terminologici --> 
    <xsl:template match="tei:term">
        <xsl:for-each select="current()">
            <xsl:element name="span">
                <xsl:attribute name="class">el_term</xsl:attribute>
                <xsl:attribute name="id">
                    <xsl:value-of select="concat('def_', substring(current()/@ref, 2))" />
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:apply-templates select="//tei:gloss[@target=current()/@ref]" />
                </xsl:attribute>
                <xsl:apply-templates />
            </xsl:element>
        </xsl:for-each>
    </xsl:template>


    <!-- Template prolusioni immagini -->
    <xsl:template match="tei:facsimile">
        <xsl:for-each select="tei:surface">
            <xsl:element name="div">
                <xsl:choose>
                    <xsl:when test="not(contains(@xml:id, 'r'))">
                        <xsl:choose>
                            <xsl:when test="contains(@xml:id, '15')">
                                <xsl:attribute name="class">p15</xsl:attribute>
                                <xsl:attribute name="id">cont_img_15</xsl:attribute>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:attribute name="id">cont_img_16</xsl:attribute>
                                <xsl:attribute name="class">p16</xsl:attribute>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:attribute name="class">retro</xsl:attribute>
                        <xsl:choose>
                            <xsl:when test="contains(@xml:id, '15')">
                                <xsl:attribute name="id">cont_img_15r</xsl:attribute>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:attribute name="id">cont_img_16r</xsl:attribute>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="concat('img/', @xml:id, '.png')" />
                    </xsl:attribute>
                    <xsl:attribute name="width">450px</xsl:attribute>
                    <xsl:attribute name="usemap">
                        <xsl:value-of select="concat('#map_', @xml:id)"/>
                    </xsl:attribute>
                </xsl:element>


            <map class="Map">
                <xsl:attribute name="name">
                    <xsl:value-of select="concat('map_', @xml:id)"/> 
                </xsl:attribute>
                <xsl:for-each select="tei:zone">
                    <xsl:element name="area">
                        <xsl:attribute name="id">
                            <xsl:value-of select="concat('m', current()/@xml:id)"/> 
                        </xsl:attribute>
                        <xsl:attribute name="coords">
                            <xsl:value-of select="@ulx"/>, <xsl:value-of select="@uly"/>, <xsl:value-of select ="@lrx"/>, <xsl:value-of select="@lry"/>
                        </xsl:attribute>
                        <xsl:attribute name="shape">rect</xsl:attribute>
                        <xsl:attribute name="onmouseover">
                            <xsl:value-of select="concat('creaMappa(&quot;', @xml:id, '&quot;)')"/>
                        </xsl:attribute>
                        <xsl:attribute name="onmouseout">
                            <xsl:value-of select="concat('togliMappa(&quot;', @xml:id, '&quot;)')"/>
                        </xsl:attribute>
                    </xsl:element>
                </xsl:for-each>
            </map>
        </xsl:element>
        </xsl:for-each>
    </xsl:template>
    
    <!-- Template bibliografia -->
    <xsl:template match="tei:listBibl">
        <xsl:element name="h3">Appendice</xsl:element>
        <xsl:element name="h4">Bibliografia</xsl:element>
        <xsl:element name="div">
            <xsl:attribute name="id">cont_bibl</xsl:attribute>
            <xsl:for-each select="tei:bibl">
                <xsl:element name="div">
                    <p><b>Titolo: </b><xsl:value-of select="tei:title" /></p>
                    <p><b>Autore: </b><xsl:value-of select="tei:author"/></p>
                    <p><b>Luogo di pubblicazione: </b><xsl:value-of select="tei:pubPlace/tei:placeName" /></p>
                    <p><b>Editore: </b><xsl:value-of select="tei:publisher" /></p>
                    <p><b>Data: </b><xsl:value-of select="tei:date" /></p>
                </xsl:element>
            </xsl:for-each> 
        </xsl:element>
        <xsl:element name="div">
            <xsl:attribute name="id">presentazione</xsl:attribute>
            <xsl:element name="h3">Indicazioni</xsl:element>
            <xsl:element name="div">
                <xsl:element name="h4">Progetto a cura di <xsl:value-of select="//tei:person[@xml:id='II']/tei:persName" /> e <xsl:value-of select="//tei:person[@xml:id='YT']/tei:persName" /></xsl:element>
                <xsl:element name="h4">Condotto per l'esame di Codifica di Testi, a.a. 2020/2021</xsl:element>
                <xsl:element name="h4">Tenuto dal Professor <xsl:value-of select="//tei:person[@xml:id='AMdG']/tei:persName" /></xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>
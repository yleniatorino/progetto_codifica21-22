<xsl:template match="/">
    <html>
        <head>
            <title>
                <xsl:value-of select="TEI/TeiHeader/fileDesc/fileTitle"/>
            </title>
        </head>
        <body>
            <div>
                <span>
                    1.
                </span>
                <xsl: apply-templates select="TEI/TeiHeader/fileDesc"/>
            </div>
        </body>
    </html>
</xsl:template>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:exist="http://exist.sourceforge.net/NS/exist" exclude-result-prefixes="#all" version="2.0">
    <xsl:output method="xml" indent="no" omit-xml-declaration="yes"/>
    <xsl:template match="exist:match">
        <em style="color:red;">
            <xsl:value-of select="."/>
        </em>
    </xsl:template>
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="l|title">
        <xsl:apply-templates/>
    </xsl:template>
</xsl:stylesheet>
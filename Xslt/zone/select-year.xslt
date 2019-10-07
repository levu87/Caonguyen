<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <h1 class="title-h1"><xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of></h1>
        <div class="select-years"> <span>Năm
                <div class="select">
                    <select>
                        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
                    </select>
                </div></span></div>
    </xsl:template>
    <xsl:template match="Zone">
        <option>
            <xsl:attribute name="value">
                <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title"></xsl:value-of>
        </option>
    </xsl:template>
</xsl:stylesheet>
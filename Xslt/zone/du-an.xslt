<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
                <h1 data-aos="fade-right" data-aos-offset="120" data-aos-duration="700" data-aos-easing="ease-in-out"><xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of></h1>
                <div class="content" data-aos="fade-right" data-aos-offset="120" data-aos-duration="1000" data-aos-easing="ease-in-out"> 
                    <p><xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of></p><a class="button-viewmore">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">xem thêm</xsl:text>
                    <em class="mdi mdi-arrow-right"></em></a>
                </div>
    </xsl:template>
</xsl:stylesheet>
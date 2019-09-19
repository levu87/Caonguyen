<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="gioithieu-wrapper">
				<h1 class="title-h1"><xsl:value-of disable-output-escaping="yes" select="NewsList/ZoneTitle"></xsl:value-of></h1>
				<div class="container"> 
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News">
        <div class="box">
            <div class="box-content" setBackground="/Data/Sites/1/media/gioithieu-bg-1.png">
                <div class="content">
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </div>
            </div>
            <div class="box-img">
                <div class="img">
                <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <section class="nganhnghe">
            <h1 class="title-h1">
                <xsl:value-of disable-output-escaping="yes" select="/NewsList/ZoneTitle"></xsl:value-of>
            </h1>
            <div class="container">
                <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <div class="box">
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
            <div class="box-content">
                <div class="content">
                    <h2>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </h2>
                    
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    
                    <a class="button-viewmore">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text>Xem thêm</xsl:text>

                        <em class="mdi mdi-arrow-right">
                        </em>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
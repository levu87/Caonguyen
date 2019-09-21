<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <section class="chitiet-nganhnghe">
            <h1 class="title-h1">
                <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of>
            </h1>
            <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
        </section>
        <section class="linhvuckhac">
            <div class="container">
                <h2>Lĩnh vực hoạt động khác</h2>
                <div class="list-item">
                    <xsl:apply-templates select="/NewsDetail/NewsOther" mode="Other"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther" mode="Other">
        <xsl:if test="count(/NewsDetail/NewsOther)>0">
            <div class="item">
                <div class="img">
                    <img>
                    <xsl:attribute name="src">   
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    </img>
                    <div class="overlay"> <a class="title">
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </a>
                        <a class="button-viewmore">
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:text>Xem thêm</xsl:text>
                            <em class="mdi mdi-arrow-right"></em>
                        </a></div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
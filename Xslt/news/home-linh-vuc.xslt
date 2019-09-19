<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <section class="linhvuc-wrapper">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
        </section>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position()=1">
            <h1 class="title-h1" data-aos="fade-down" data-aos-offset="120" data-aos-delay="500" data-aos-duration="1000" data-aos-easing="ease-in-out">
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </h1>
            <div class="container">
                <div class="list-item">
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News">
        <!-- <xsl:if test="position()&gt;0 position()&lt;3"> -->
                <div class="item" data-aos="zoom-out" > 
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
                        </a><a class="button-viewmore">
                            
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:text disable-output-escaping="yes">xem thêm</xsl:text>
                            <em class="mdi mdi-arrow-right"></em></a></div>
                    </div>
                </div>
        <!-- </xsl:if> -->
    </xsl:template>
</xsl:stylesheet>
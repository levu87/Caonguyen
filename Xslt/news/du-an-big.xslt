<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="col-12 col-lg-6" data-aos="fade-left" data-aos-offset="120" data-aos-delay="750" data-aos-duration="1000" data-aos-easing="ease-in-out"></div>
                <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
            </div>
    </xsl:template>
    <xsl:template match="News">
        <xsl:if test="position() =1">
                <div class="img"> 
                        <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        </img>
                            <div class="title"> <a>
                            
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </a></div>
                        </div>
        </xsl:if>
        
    </xsl:template>
</xsl:stylesheet>

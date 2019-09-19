<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="row tab-item active" id="tab-4">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						
					</div>
    </xsl:template>
    <xsl:template match="News">
            <div class="col-sm-6 col-lg-3"> 
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
                        </div>
                        <div class="title"> <a> 
                          
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            
                                <h3><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3>
                            </a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="FileUrl"></xsl:value-of>
                            </xsl:attribute>
                            <a class="download">
                                            <xsl:attribute name="title">
                                                <xsl:value-of select="Title"></xsl:value-of>
                                            </xsl:attribute>
                                            <xsl:text disable-output-escaping="yes">Tải về</xsl:text> 
                                    <em class="lnr lnr-download"></em></a></div>
                    </div>
                </div>
    </xsl:template>
</xsl:stylesheet>
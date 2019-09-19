<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="tab-item active tin-tuc" id="tab-1">
						<div class="row">
							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						</div>
					</div>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-12 col-lg-4 items">
            <figure> <a class="img" href="">
                
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
            
             <img>
             <xsl:attribute name="src">
                 <xsl:value-of select="ImageUrl"></xsl:value-of>
             </xsl:attribute>
             <xsl:attribute name="alt">
                 <xsl:value-of select="Title"></xsl:value-of>
             </xsl:attribute>
             </img>
             
             </a>
                <figcaption> 
                    <time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time><h3><a class="title">
                        
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    
                        </a></h3>
                    <p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>
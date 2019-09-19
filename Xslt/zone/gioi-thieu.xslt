<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="gioithieu-wrapper">
				<h1 class="title-h1" data-aos="fade-down" data-aos-offset="120" data-aos-duration="800" data-aos-easing="ease-in-out"><xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of></h1>
				
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
			</section>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="container"> 
					<div class="row"> 
						<div class="col-12 col-lg-6 left" setBackground="/Data/Sites/1/media/home/gioithieu-bg.png">
							<div class="content" data-aos="zoom-in" data-aos-duration="1100"> 
								<p><xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of></p>
                                <a class="button-viewmore">
                            
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text>xem thêm</xsl:text>
                                <em class="mdi mdi-arrow-right"></em></a>
							</div>
						</div>
						<div class="col-12 col-lg-6 right">  
							<div class="img" data-aos="fade-right" data-aos-offset="120" data-aos-delay="750" data-aos-duration="1000" data-aos-easing="ease-in-out">
                                <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                </img>
                            </div>
                            <div class="img" data-aos="fade-left" data-aos-offset="120" data-aos-delay="750" data-aos-duration="1000" data-aos-easing="ease-in-out">
                                <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="SecondImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                </img>
                            </div>
						</div>
					</div>
				</div>
    </xsl:template>
</xsl:stylesheet>
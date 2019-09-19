<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="doitac-wrapper"> 
				<h1 class="title-h1" data-aos="zoom-out" data-aos-offset="120" data-aos-delay="100" data-aos-duration="800" data-aos-easing="ease-in-out"><xsl:value-of disable-output-escaping="yes" select="/BannerList/ModuleTitle"></xsl:value-of></h1>
				<div class="container">
					<div class="swiper-container" data-aos="fade-up">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
							
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="swiper-slide">
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
								</div>
							</div>
    </xsl:template>
</xsl:stylesheet>
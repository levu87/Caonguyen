<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="gioithieu-wrapper">
				<h1 class="title-h1"><xsl:value-of disable-output-escaping="yes" select="/NewsList/NewsTitle"></xsl:value-of></h1>
				<div class="container"> 
					<div class="row"> 
						<div class="col-12 col-lg-6 left" setBackground="/Data/Sites/1/media/home/gioithieu-bg.png">
							<div class="content"> 
								<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of><a class="button-viewmore">
                                
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text disable-output-escaping="yes">xem thêm</xsl:text>
                                <em class="mdi mdi-arrow-right"></em></a>
							</div>
						</div>
						<div class="col-12 col-lg-6 right">  
							<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
							
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="img"> <img >
        <xsl:attribute name="src">
            <xsl:value-of select="ImageUrl"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="alt">
            <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        </img></div>
    </xsl:template>
</xsl:stylesheet>
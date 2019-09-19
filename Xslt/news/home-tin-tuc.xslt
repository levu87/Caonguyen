<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="tintuc-wrapper" setBackground="/Data/Sites/1/media/home/tintuc-bg.png">
				<h1 class="title-h1" data-aos="zoom-out" data-aos-offset="120" data-aos-delay="100" data-aos-duration="800" data-aos-easing="ease-in-out"><xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of></h1>
				<div class="container"> 
					<div class="row list-tintuc">
                        <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-12 col-lg-4 item" data-aos="fade-up-left" data-aos-duration="800" data-aos-easing="ease-in-out">
			<figure> <a class="img"> 
			
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
			</img></a>
				<figcaption> 
					<time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time><a class="title">
				
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					
						<h3><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3></a>
					<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
				</figcaption>
			</figure>
		</div>
    </xsl:template>
</xsl:stylesheet>
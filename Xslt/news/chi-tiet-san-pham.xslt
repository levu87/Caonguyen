<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="sanpham-chitiet">
				<div class="container"> 
					<div class="box">
						<div class="box-content">
							<div class="content"> 
								<h2><xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of></h2>
								<ul class="social-icon">
									<li><a class="twt" href="#"><em class="fab fa-twitter"></em></a></li>
									<li><a class="fb" href="#"><em class="fab fa-facebook-f"></em></a></li>
									<li><a class="fax" href="#"><em class="mdi mdi-fax"></em></a></li>
								</ul>
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/BriefContent"></xsl:value-of>
							</div>
						</div>
						<div class="box-img">
							<xsl:apply-templates select="/NewsDetail/NewsImages" mode="img-1"></xsl:apply-templates>
						</div>
					</div>
					<div class="box">
						<xsl:apply-templates select="/NewsDetail/NewsImages" mode="img-2"></xsl:apply-templates>
					<div class="box-content">
					<div class="content">
						<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
					</div>
					</div>
					</div>				
				</div>
			</section>
    </xsl:template>
	<xsl:template match="NewsImages" mode="img-1">
		<div class="img">
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="img-2">
		<div class="box-img">
			<div class="img">
				<img class="lazyload blur-up">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
			</div>
	</xsl:template>
</xsl:stylesheet>
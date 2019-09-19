<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="chitiet-tintuc"> 
				<div class="container"> 
					<div class="row">
						<div class="col-lg-9 contain">
							<h2><xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of></h2>
							<time><xsl:value-of disable-output-escaping="yes" select="/NewsDetail/CreatedDate"></xsl:value-of></time>
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>

							<ul class="social-icon">
								<li><a class="twt">
                                
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                
                                <em class="fab fa-twitter"></em></a></li>
								<li><a class="fb">
                                
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                
                                <em class="fab fa-facebook-f"></em></a></li>
								<li><a class="fax">
                                
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                
                                <em class="mdi mdi-fax"></em></a></li>
							</ul>
						</div>
						<div class="col-lg-3 other">
							<div class="head">
								<h2><xsl:text disable-output-escaping="yes">tin tức khác</xsl:text> </h2>
							</div>
							<div class="list-item">
								<xsl:apply-templates select="NewsDetail/NewsOther" mode="Other"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="NewsOther" mode="Other">
        <xsl:if test="count(/NewsDetail/NewsOther)>0">
        <div class="item"> 
            
        <a class="img">
        
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
            <div class="content"> 
                <time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time>
                <a> 
                    
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    
                    <h4><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h4></a>
            </div>
        </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
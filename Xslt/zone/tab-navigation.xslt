<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:if test="count(/ZoneList/Zone) > 0">
        <h1 class="title-h1"><xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of></h1>
        <div class="tab-current"><span>Danh mục </span><em class="mdi mdi-chevron-down"></em></div>
        <nav class="row no-gutters tab-navigation">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
        </nav>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone">
        <a class="button tab-link">
            <xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text> button active</xsl:text>
				</xsl:attribute>
			</xsl:if>

			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        </a>
    </xsl:template>
</xsl:stylesheet>

    
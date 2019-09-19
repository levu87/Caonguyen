<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <h1 class="title-h1"><xsl:value-of disable-output-escaping="yes" select="/NewsList/ZoneTitle"></xsl:value-of></h1>
				<div class="container">
					<div class="quanhe-wrapper"> 
						<div class="select-years"> <span>Năm
								<div class="select">
									<select> 
										<option value="">2019</option>
										<option value="">2019</option>
									</select>
								</div></span></div>
    </xsl:template>
</xsl:stylesheet>
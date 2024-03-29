<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Stt</th>
                                    <th class="noidung" scope="col">Nội dung công bố thông tin</th>
                                    <th scope="col">Ngày đăng </th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>

                            </tbody>
                        </table>
                    </div>
    </xsl:template>
    <xsl:template match="News">
        <tr>
            <td><xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of></td>
            <td class="title">
                <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>

                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </a>
            </td>
            <td>
                <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
            </td>
            <td>
                <a download=''>
                    <xsl:attribute name="href">
                            <xsl:value-of select="FileUrl"></xsl:value-of>
                        </xsl:attribute>
                    <em class="mdi mdi-download"></em>
            </a></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
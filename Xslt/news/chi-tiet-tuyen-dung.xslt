<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <section class="chitiet-tuyendung">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 contain">
                        <h3>
                            <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of>
                        </h3>
                        <p> <strong>Cơ hội nghề nghiệp </strong></p>
                        <p> <span>CÔNG TY CỔ PHẦN ĐẦU TƯ NĂNG LƯỢNG CAO NGUYÊN </span>có trụ sở tại Tp Buôn Ma Thuột,
                            tỉnh Đắk Lắk đang tìm kiếm ứng viên có năng lực và kinh nghiệm cho vị trí:</p>
                        <table class="table">
                            <xsl:apply-templates select="/NewsDetail/NewsAttributes" mode="Table"></xsl:apply-templates>
                        </table>
                        <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
                        <div class="button"> <a class="button-ungtuyen" href='javascript:void(0)'>
                                <xsl:text disable-output-escaping="yes">Ứng tuyển</xsl:text>
                                <em class="mdi mdi-arrow-right"></em>
                            </a>
                            <p>Hoặc</p>
                            <a class="button-down">

                                <xsl:attribute name="href">
                                    <xsl:value-of select="FileUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text disable-output-escaping="yes">Tải mẫu đơn xin việc</xsl:text>
                                <em class="mdi mdi-arrow-right"></em>
                            </a>
                        </div>
                        <div class="form-apply">
                            <iframe>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="/NewsDetail/ApplyUrl"></xsl:value-of>
                                </xsl:attribute>
                            </iframe>
                        </div>
                    </div>
                    <div class="col-lg-3 other">
                        <div class="head">
                            <h2>tuyển dụng khác</h2>
                        </div>
                        <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
                    </div>


                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsAttributes" mode="Table">
        <tr>
            <td class="title">
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
            </td>
        </tr>

    </xsl:template>
    <xsl:template match="NewsOther">
        <xsl:if test="count(/NewsDetail/NewsOther)>0">
            <ul class="list-item">
                <li>
                    <time>
                        <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                    </time><a class="title">

                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>

                        <h4>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h4>
                    </a>
                </li>

            </ul>
        </xsl:if>

    </xsl:template>
</xsl:stylesheet>
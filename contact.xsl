<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sxl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Demo XML with XSLT</title>
            </head>
            <body>
                <h1>Người gửi: <xsl:value-of select="note/from"/></h1>
                <h2>Người nhận: <xsl:value-of select="note/to"/></h2>
                <h2>CC: <xsl:value-of select="note/cc"/></h2>
                <xsl:if test="note/body/header >2">
                    <p><sxl:value-of select="note/body/header"/></p>
                    <p><sxl:value-of select="note/body/main"/></p>
                    <p><sxl:value-of select="note/body/footer"/></p>
                </xsl:if>
                <xsl:choose>
                    <xsl:when test="note/body/header =1">
                        <p style="color:red">1 Header</p>
                    </xsl:when>
                    <xsl:when test="note/body/header =2">
                        <p style="color:red">2 Header</p>
                    </xsl:when>
                    <xsl:otherwise>
                        <p>Khong gi ca</p>
                    </xsl:otherwise>
                </xsl:choose>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
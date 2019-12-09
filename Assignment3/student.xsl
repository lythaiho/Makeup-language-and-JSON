<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Danh sach sinh vien</title>
            </head>
            <body>
                <table>
                    <thead>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Address</th>
                        <th>Telephone</th>
                    </thead>
                    <tbody>
                        <xsl:for-each select="list_student/student">

                            <xsl:if test="age =19">

                                    <tr style="background-color:teal">
                                        <td>
                                            <xsl:value-of select="name"/>
                                        </td>
                                        <td>

                                            <xsl:value-of select="age"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="address"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="telephone"/>
                                        </td>
                                    </tr>

                            </xsl:if>
                            <xsl:if test="age !=19">
                            <tr>
                                <td>
                                    <xsl:value-of select="name"/>
                                </td>
                                <td>

                                    <xsl:value-of select="age"/>
                                </td>
                                <td>
                                    <xsl:value-of select="address"/>
                                </td>
                                <td>
                                    <xsl:value-of select="telephone"/>
                                </td>
                            </tr>
                            </xsl:if>
                        </xsl:for-each>

                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sxl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
            </head>
            <body>
                <div class="container row">
                    <div class="col-6">
                        <div>
                            <h4>Tên khách hàng: <xsl:value-of select="cart/Customer/name"/></h4>
                            <h4>Địa chỉ: <xsl:value-of select="cart/Customer/address"/></h4>
                            <h4>Số điện thoại: <xsl:value-of select="cart/Customer/tel"/></h4>
                            <h4>Tổng tiền: <xsl:value-of select="cart/GrandTotal"/></h4>
                        </div>
                    </div>
                    <div class="col-6">
                        <table  class="table table-primary">
                            <thead>
                                <th>Tên sản phẩm</th>
                                <th>Giá</th>
                                <th>Số lượng</th>
                                <th>Giá tiền</th>
                            </thead>
                            <tbody>
                                <xsl:for-each select="cart/Items/Item">

                                    <xsl:if test="priceItem =50">

                                        <tr style="background-color:teal">
                                            <td>
                                                <xsl:value-of select="nameItem"/>
                                            </td>
                                            <td>

                                                <xsl:value-of select="priceItem"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="quantityItem"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="subTotal"/>
                                            </td>
                                        </tr>

                                    </xsl:if>
                                    <xsl:if test="priceItem !=50">
                                        <tr>
                                            <td>
                                                <xsl:value-of select="nameItem"/>
                                            </td>
                                            <td>

                                                <xsl:value-of select="priceItem"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="quantityItem"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="subTotal"/>
                                            </td>
                                        </tr>
                                    </xsl:if>
                                </xsl:for-each>

                            </tbody>
                        </table>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
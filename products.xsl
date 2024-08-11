<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Product List</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                        border-radius:20px;
                    }
                    th {
                        background-color: #b41313;
                    }
                </style>
            </head>
            <body style="background:#b45d13;color:white;">
                <h2 style="text-align:center;">Product Inventory</h2>
                <table>
                    <tr>
                        <th>Category</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Product Image</th>
                        <th>Discount</th>
                        <th>Product Code</th>
                        <th>Description</th>
                        <th>Product From</th>
                    </tr>
                    <xsl:for-each select="products/product">
                        <tr>
                            <td><xsl:value-of select="@category"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="price"/></td>
                            <td><xsl:value-of select="quantity"/></td>
                            <td><a href="{product_image}" target="_blank">Image</a></td>
                            <td><xsl:value-of select="discount"/></td>
                            <td><xsl:value-of select="product_code"/></td>
                            <td><xsl:value-of select="description"/></td>
                            <td><xsl:value-of select="product_from"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

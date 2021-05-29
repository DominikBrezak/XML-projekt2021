<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
	        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	        <title>Shop</title>
	        <link href="http://fonts.googleapis.com/css?family=Raleway:400,200,500,600,700,800,300" rel="stylesheet"/>
	        <link href="default.css" rel="stylesheet" type="text/css" media="all"/>
	        <link href="fonts.css" rel="stylesheet" type="text/css" media="all"/>
	    </head>
	    <body>
	        <div id="wrapper">
		        <header id="menu-wrapper">
                    <h1>Destiny Lounge</h1>
                </header>
		        <div id="menu-wrapper">
			        <div id="menu" class="container">
				        <ul>
					        <li class="current_page_item"><a href="pocetnastranica.html">Vijesti</a></li>
					        <li><a href="shop.xml">Shop</a></li>
					        <li><a href="kontakt_stranica.html">Kontakt</a></li>
					
					
				         </ul>
			        </div>
			
		
		        </div>	
		        <div id="page" class="container">
					<h2>Igre</h2>
			        <table style="width:100%;" border="1">
                    <tr>
                        <th>Naslov</th><th>Cijena u kunama</th><th>Žanr</th><th>Godina izdanja</th>
                    </tr>
                    <xsl:for-each select="/Shop/igre/Igra">
                        <tr>
                            <td>
                                <xsl:value-of select="Naslov"/>
                            </td>
                            <td>
                                <xsl:value-of select="Cijena"/>
                            </td>
                            <td>
                                <xsl:value-of select="Žanr"/>
                            </td>
                            <td>
                                <xsl:value-of select="GodinaIzdanja"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
				<h2>Tehnika</h2>
				 <table style="width:100%;" border="1">
                    <tr>
                        <th>Ime</th><th>Cijena u kunama</th><th>Godina proizvodnje</th>
                    </tr>
                    <xsl:for-each select="/Shop/Tehnika/Proizvod">
                        <tr>
                            <td>
                                <xsl:value-of select="Ime"/>
                            </td>
                            <td>
                                <xsl:value-of select="Cijena"/>
                            </td>
                            <td>
                                <xsl:value-of select="GodinaProizvodnje"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
		        </div>

	        </div>
		
	        <div id="footer" class="footer">
		        <h2>Dominik Brezak</h2>
		        <p>@TVZ</p>
	        </div>
	
	
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="practica10_1.css" />
      </head>
      <body>
        <h2>Mi Biblioteca</h2>
        <table>
          <tr>
            <th>Titulo</th>
            <th>Autor</th>
            <th>Numero de Paginas</th>
          </tr>

          <xsl:for-each select="Libros/libro">
            <xsl:sort select="NumPaginas" data-type="number" order="ascending" />        
          <tr>

              <td class="titulo">
                <xsl:value-of select="Titulo" />
              </td>
              <td class="autor">
                <xsl:for-each select="Autores/autor">
                  <xsl:value-of select="concat(@codigo, ' - ', Nombre, '  ', Apellidos)" /><br />
                </xsl:for-each>
              </td>
              <td class="paginas">
                <xsl:value-of select="NumPaginas" />
              </td>

            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
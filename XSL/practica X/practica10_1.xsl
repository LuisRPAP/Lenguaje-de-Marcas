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
          <xsl:apply-templates select="Libros/libro" />
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="libro">
    <tr>
      <td style="color: blue;">
        <xsl:value-of select="Titulo" />
      </td>
      <td>
        <xsl:value-of select="concat(Autores/autor[1]/@codigo, ' - ', Autores/autor[1]/Nombre)" />
      </td>
      <td>
        <xsl:value-of select="NumPaginas" />
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
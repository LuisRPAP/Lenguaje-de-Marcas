<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="Estilos/Estilos11_1.css" />
      </head>
      <body>

        <h1>Platos Principales</h1>
        <table>
          <tr>
            <th>Nombre</th>
            <th>Dificultad</th>
            <th>Tiempo</th>
            <th>Elaboración</th>
          </tr>
          <xsl:for-each select="recetas/receta">
            <tr>
              <td class="nombre">
                <xsl:value-of select="nombre" />
                <xsl:text> - </xsl:text>
                <xsl:value-of select="tipo/@definicion" />
              </td>
              <td class="dificultad">
                <xsl:value-of select="dificultad" />
              </td>
              <td class="tiempo">
                <xsl:value-of select="tiempo" />
              </td>
              <td class="elaboracion">
                <xsl:value-of select="elaboracion" />
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
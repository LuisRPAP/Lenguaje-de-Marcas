<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="practica9_1_4.css" />
      </head>
      <body>
        <h2>Lista de Empleados</h2>
        <table>
          <tr>
            <th>Piloto</th>
            <th>Escuderia</th>
            <th>Nacionalidad</th>
          </tr>
          <xsl:for-each select="Pilotos/piloto">
            <xsl:sort select="Nacionalidad" />
            <tr>
              <td>
                <xsl:value-of select="Nombre" />
              </td>
              <td>
                <xsl:for-each select="Escuderia">
                  <xsl:value-of select="nombre" /><br />
                </xsl:for-each>
              </td>
              

              <xsl:choose>
                <xsl:when test="Nacionalidad='Inglés'">
                  <td style="color: blue;">
                    <xsl:value-of select="Nacionalidad" />
                  </td>
                </xsl:when>
                <xsl:when test="Nacionalidad='Español'">
                  <td style="color: red;">
                    <xsl:value-of select="Nacionalidad" />
                  </td>
                </xsl:when>
                <xsl:otherwise>
                  <td style="color: black;">
                    <xsl:value-of select="Nacionalidad" />
                  </td>
                </xsl:otherwise>
              </xsl:choose>
            </tr>

          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
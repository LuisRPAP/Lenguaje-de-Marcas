<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="Estilos/Estilos10.1.css" />
            </head>
            <body>
                <h1>Mi Biblioteca</h1>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    <xsl:template match="Libros">
        <table>
            <tr>
                <th>Título</th>
                <th>Autor</th>
                <th>Número de páginas</th>
            </tr>
            <xsl:apply-templates select="libro">
                <xsl:sort select="Titulo" order="ascending" />
            </xsl:apply-templates>
        </table>
    </xsl:template>
    <xsl:template match="libro">
        <xsl:if
            test="Autores/autor/@nacionalidad = 'Español' or Autores/autor/@nacionalidad = 'Española'">

            <tr>
                <td class="izquierda">
                    <xsl:value-of select="Titulo" />
                </td>
                <td>
                    <xsl:apply-templates select="Autores/autor" />
                </td>
                <td class="derecha">
                    <xsl:value-of select="NumPaginas" />
                </td>
            </tr>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Autores/autor">
        <xsl:value-of select="Nombre" />
                <xsl:text> </xsl:text>
                <xsl:value-of select="Apellidos" /><br />
    </xsl:template>
</xsl:stylesheet>
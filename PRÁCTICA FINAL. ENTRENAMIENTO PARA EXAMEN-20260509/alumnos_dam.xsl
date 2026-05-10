<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8" />
                <link rel="stylesheet" type="text/css" href="Estilos/estiloAlumnosDam.css" />
                <title>Alumnos DAM</title>
            </head>
            <body>
                <h1>Lista de alumnos</h1>
                <p>Listao de alumnos de la clase de Desarrollo de Aplicaciones multiplataforma
                    (DAM) que no tengan 21 años.</p>
                <table>
                    <tr>
                        <th>Alumno</th>
                        <th>Sexo</th>
                        <th>Edad</th>
                        <th>Pueblo</th>
                    </tr>
                    <xsl:for-each select="clase/alumno[edad != 21]">
                        <xsl:sort select="edad" data-type="number" order="descending" />
                        <tr>
                            <td class="nombre">
                                <xsl:value-of select="nombre" />
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="apellidos" />
                            </td>
                            <td class="sexo">
                                <xsl:value-of select="@sexo" />
                            </td>
                            <td>
                                <xsl:attribute name="class">
                                    <xsl:choose>
                                        <xsl:when test="edad &gt; 22">edadMayor</xsl:when>
                                        <xsl:otherwise>edadMenor</xsl:otherwise>
                                    </xsl:choose>
                                </xsl:attribute>
                                <xsl:value-of select="edad" />
                            </td>
                            <td >
                                <xsl:attribute name="class">
                                <xsl:choose>
                                        <xsl:when test="pueblo='Logroño'">logroño</xsl:when>
                                        <xsl:otherwise>otroPueblo</xsl:otherwise>
                                    </xsl:choose>
                                </xsl:attribute>
                                <xsl:value-of select="pueblo" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : lycee.xsl
    Created on : 6 septembre 2022, 11:22
    Author     : tmussard
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="lycee">
        <html>
            <head>
                <title>lycee.xsl</title>
            </head>
            <body>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
        <xsl:template match="classe">
            <xsl:value-of select="@nom" />
            <table border="1"
            >
                <xsl:apply-templates />
            </table>
    </xsl:template>
     <xsl:template match="eleve">
            <tr>
                <xsl:apply-templates />
            </tr>
    </xsl:template>
     <xsl:template match="prof">
            <tr>
                <xsl:apply-templates />
            </tr>
    </xsl:template>
    
     <xsl:template match="nom">
         <td classe="nom">
             <xsl:value-of select="." />
         </td>
    </xsl:template>
         <xsl:template match="prenom">
         <td classe="prenom">
             <xsl:value-of select="." />
         </td>
    </xsl:template>
         <xsl:template match="age">
         <td bgcolor="#555555">
             <xsl:value-of select="." />
         </td>
    </xsl:template>

</xsl:stylesheet>

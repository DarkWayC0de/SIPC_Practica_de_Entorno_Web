<?xml version='1.0' ?> 
<xsl:stylesheet version="1.1" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
  <xsl:template match="/"> 
   <HTML>
    <HEAD>
    <title> Práctica de Entorno Web</title>
    </HEAD>
    <BODY> 
    <!-- <B> Notas del examen del 6 de Septiembre de 2005
     </B>  
     <BR/> 
     <TABLE> 
      <xsl:for-each  select="CLASE/ALUMNO"> 
      <xsl:sort order="ascending" select="APELLIDOS"/> 
       <TR> 
        <TD><xsl:value-of select="APELLIDOS"/>,
            <xsl:value-of select="NOMBRE"/>
        </TD> 
        <TD><B><xsl:value-of select="NOTA"/></B></TD> 
        <BR/>
       </TR> 
      </xsl:for-each> 
     </TABLE>
     -->
    </BODY> 
   </HTML> 
  </xsl:template> 
 </xsl:stylesheet> 

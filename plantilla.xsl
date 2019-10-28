<?xml version='1.0' ?> 
<xsl:stylesheet version="1.1" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
  <xsl:template match="/">
   <HTML lang="es" xml:lang="es">
    <HEAD>
     <meta charset="UTF-8"/>
     <meta name="title" content="Práctica de Entorno Web"/>
     <meta name="description" content="Web, para una practica de Sistema Interación Persona Computador"/>
     <meta name="keywords" content="videojuegos,videogame"/>
     <title> Práctica de Entorno Web</title>
     <link rel="shortcut icon" href="https://campusvirtual.ull.es/1920/theme/image.php/campus/theme/1571053717/favicon"> </link>
    </HEAD>
    <BODY>
     <header>
       <h1>Práctica de Entorno web</h1>
     </header>
     <nav>
      <a href="./index.html">Consolas</a>
     </nav>
     <section>
      <TABLE>
       <xsl:for-each select="CLASE/CONSOLAS">
        <xsl:sort order="ascending" select="NOMBRE"/>  <!--TODO arreglar-->
         <TR>
          <TD><xsl:value-of select="NOMBRE"/>,
           <xsl:value-of select="INFORMACION"/>,
           <xsl:value-of select="DESCRIPCION"/>,
           <xsl:value-of select="ESPECIFICACIONES"/>
          </TD>
         </TR>
       </xsl:for-each>
      </TABLE>
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
     </section>
     <aside></aside>
     <footer></footer>
    </BODY>
   </HTML> 
  </xsl:template> 
 </xsl:stylesheet> 

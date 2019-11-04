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
           <xsl:sort order="ascending" select="NOMBRE"/>
         <TR>
          <TD>
           <p>
             <h3>
              <xsl:value-of select="NOMBRE"/>
             </h3>
            <p style="text-align:justify">
             <xsl:value-of select="INFORMACION"/>
             <br></br>
             <br></br>
             <xsl:value-of select="DESCRIPCION"/>
             <br></br>
             <br></br>
             <xsl:value-of select="ESPECIFICACIONES"/>
            </p>
           </p>
           <br></br>
           <br></br>
          </TD>
         </TR>
       </xsl:for-each>
      </TABLE>
     </section>
     <aside></aside>
     <footer></footer>
    </BODY>
   </HTML> 
  </xsl:template> 
 </xsl:stylesheet> 

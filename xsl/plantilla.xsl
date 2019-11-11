<?xml version='1.0' ?> 
<xsl:stylesheet version="1.1" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
  <xsl:template match="/">
   <html lang="es" xml:lang="es">
    <head>
     <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
     <meta name="title" content="Práctica de Entorno Web"/>
     <meta name="description" content="Web, para una practica de Sistema Interación Persona Computador"/>
     <meta name="keywords" content="videojuegos,videogame"/>
     <title> Práctica de Entorno Web</title>
     <link rel="shortcut icon" href="https://campusvirtual.ull.es/1920/theme/image.php/campus/theme/1571053717/favicon"> </link>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    </head>
    <body>
     <header>
         <h1><a href="./index.html">Práctica de Entorno web</a></h1>
     </header>
     <nav>
      <a >Consolas</a>
     </nav>
     <section>
      <table>
       <xsl:for-each select="CLASE/CONSOLAS">
           <xsl:sort order="ascending" select="NOMBRE"/>
         <tr>
          <td>
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
          </td>
         </tr>
       </xsl:for-each>
      </table>
     </section>
     <aside></aside>
     <footer></footer>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
   </html>
  </xsl:template> 
 </xsl:stylesheet> 

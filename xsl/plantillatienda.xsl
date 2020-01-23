<?xml version='1.0' ?> 
<xsl:stylesheet version="1.1"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
  <xsl:template match="/">
   <html lang="es">

<head>
  <meta charset="UTF-8" xml:lang="es"/>
  <meta name="title" content="ConsolasODE"/>
  <meta name="descrption" content="Página online de venta de consolas"/>
  <meta name="keywords"
    content="videojuego, consola, sony, microsoft, nintendo, playstation, xbox, switch, comprar, oferta, servicio"/>
  <title>ConsolasODE</title>
  <link rel="stylesheet" href="css/cabecera.css"/>
  <link rel="stylesheet" href="css/slider.css"/>
  <link rel="stylesheet" href="css/animate.css"/>
  <link rel="stylesheet" href="css/resto.css"/>
  <link rel="stylesheet" href="css/tienda_css.css"/>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
  <script src="https://kit.fontawesome.com/80e2a2c9ef.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/sss.css" type="text/css" media="all"/>
  <link rel="shortcut icon" href="imagenes/icono.jpg"> </link>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
    <figure>
     <div>
     <div class="logoini" onclick="window.location='index.html';" >ConsolasODE</div>
      <div class="logoini" onclick="window.location='index.html';" >INICIO</div>
      </div>
    </figure>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#enlaces" aria-controls="enlaces"
      aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class=" navbar-collapse collapse justify-content-end" id="enlaces">
      <ul class="navbar-nav" id="pepe">
        <li class="nav-item active">
          <a class="nav-link text-light" href="index.html">Inicio</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link text-light" href="#">Tienda</a>
        </li>
        <li class="nav-item ">
          <a class="nav-link text-light" href="index.html#Contactos">Contacto</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="login.html">Iniciar sesión</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="index.html#quienessomos">Quienes somos</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="m-4">
    
    <TABLE>
      <TR>
        <TD height="110">
        </TD>
      </TR>   
      <xsl:for-each select="CLASE/MARCA">
        <xsl:sort orden="ascending" select ="NOMBREMARCA"/>
        <TR>
          <TD>
            <xsl:attribute name="id">
            <xsl:value-of select="NOMBREMARCA"/>
            </xsl:attribute>
            <p>
              <h1><b>
                <xsl:value-of select="NOMBREMARCA"/>
              </b></h1>
            </p>
          </TD>
        </TR>
        <TR>
          <xsl:for-each select="CONSOLAS">
            <TD width="400">
              <a href="formulariotienda.html">
                <img width="350" height="250">
                  <xsl:attribute name="src">imagenes/<xsl:value-of select="IMG"/>
                  </xsl:attribute>
                </img>
              </a>
              <p style="text-align:justify">
                  <h3>
                    <xsl:value-of select="NOMBRE"/>
                  </h3>
                  <b><xsl:value-of select="PRECIO"/><small>€</small></b>
                  <br/>
                  <br/>
                  <xsl:value-of select="DESCRIPCION1"/>
                <span id="dots"><xsl:attribute name="id">dotsmyBtn<xsl:value-of select="NOMBRE"/>
                </xsl:attribute>...</span>
                <span class="more" id="more"><xsl:attribute name="id">moremyBtn<xsl:value-of select="NOMBRE"/>
                </xsl:attribute>
                  <xsl:value-of select="DESCRIPCION2"/>
                  <br/>
                  <br/>
                  <b>Especificaciones:</b>
                  <xsl:value-of select="ESPECIFICACIONES"/>
                </span>
              </p>
            <button class="btn btn-primary toggle-on" onclick="readmore(this.id)" id="myBtn">
                <xsl:attribute name="id">myBtn<xsl:value-of select="NOMBRE"/>
                </xsl:attribute>
		Leer más	
	    </button> 
          </TD>
          </xsl:for-each>
        </TR>
      </xsl:for-each>
    </TABLE>
  </div>
  <br/>
  <br/>
  <br/>
  <br/>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
    integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
    crossorigin="anonymous"></script>
<script src="js/tienda.js"></script>
</body>
</html>
  </xsl:template> 
 </xsl:stylesheet> 

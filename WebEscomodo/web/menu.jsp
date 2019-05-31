<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    
    
    String mail = request.getParameter("email") == null ? "" : request.getParameter("email");
    mail = "tamalesP@hotmail.com"; //BORRAR CUANDO MANDEMOS EL NOMBRE DESDE LAS OTRAS PAG
    ldn.Establecimiento est = new ldn.Establecimiento(mail);
    
%>
<!DOCTYPE html>
<html>
	<head>
		<title>Menú <%=est.getNombre()%></title>
	</head>
	<script src="libs/jquery-3.1.1/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js" ></script>
	<script src="js/menu.js"></script>
	<script type="text/javascript" src="libs/fly/js/flyto.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link href="libs/materialize/css/materialize.min.css" rel="stylesheet">
	<link href="libs/jquery-confirm/css/jquery-confirm.css" rel="stylesheet">
	<script src="libs/materialize/js/materialize.min.js"></script>
	<script src="libs/jquery-confirm/js/jquery-confirm.js"></script>
	<link rel="stylesheet" href="css/colors.css">
	<link rel="stylesheet" href="css/menu.css">
    <link href="css/aplatillo.css" rel="stylesheet">
    <link href="css/nvBar.css" rel="stylesheet" type="text/css"/>
    <link href="css/foot.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/nvBar.js"></script>
    <script type="text/javascript" src="js/foot.js"></script>

<body>
	<div>
		<nav>
            <div class="nav-wrapper">

              <a href="#" data-target="small-sidenav" class="sidenav-trigger">
                <i class="fas nav-fas fa-bars"></i>
              </a>

              <ul id="nav-mobile" class="left hide-on-med-and-down">
                <li><a href="productos.html" class = "white-text">Escomida</a></li>
                <li><a href="establecimientos.html" class = "white-text">Escomercio</a></li>
              </ul>

              <ul class="right hide-on-med-and-down show-on-large">

                <li><a href="carrito.jsp" class="showOnCli carr"><i class="fas nav-fas fa-shopping-cart white-text"></i></a></li>
                <li><a href="login.jsp" class="waves-effect waves-light btn btn-login-nav">Log In</a></li>
                <li><a href="#" id="btn-user-nav" data-target="user-sidenav" class="sidenav-trigger"><i class="fas nav-fas fa-user white-text"></i></a></li>

            </ul>

              <a href="mainPage.jsp" class="brand-logo center">
                <img src="https://drive.google.com/uc?id=1-33i2fj72T0A40dxfZpDGTfWMyGbwj63" class = "responsive-img" id = "logo">
              </a>

              <ul class="sidenav" id="small-sidenav">
                <li><a class = "orange-text showOnCli showOnRep showOnCom" id="btn-verPerfil-s"><i class="fas nav-fas fa-user-circle orange-text"></i>Ver Perfil</a></li>
              <li><a href="productos.html" class = "orange-text"><i class="fas nav-fas fa-pizza-slice orange-text"></i>Escomida</a></li>
                <li><a href="establecimientos.html" class = "orange-text"><i class="fas nav-fas fa-coffee orange-text"></i>Escomercio</a></li>
                <li><a class = "orange-text showOnCli showOnRep" id="btn-hist-nav-s"><i class="fas nav-fas fa-history orange-text"></i>Historial de Pedidos</a></li>
                <li><a href="carrito.jsp" class="orange-text showOnCli carr"><i class="fas nav-fas fa-shopping-cart orange-text"></i>Carrito</a></li>
                 <li><a href="favoritos.jsp" class="orange-text showOnCli" id="btn-fav-nav"><i class="fas nav-fas fa-heart orange-text"></i>Favoritos</a></li>
                 <li><a href="#" class="orange-text showOnCli" id="btn-eval-nav"><i class="fas nav-fas fa-star orange-text"></i>Evaluar</a></li>
                <li><a href="login.jsp" class="waves-effect waves-light btn btn-login-nav">Log In</a></li>
                <li><a href="#" class="waves-effect waves-light btn cerrar-ses">Cerrar Sesión</a></li>
                </ul>

                <ul class="sidenav" id="user-sidenav">
              <li><a class = "orange-text showOnCli showOnRep showOnCom" id="btn-verPerfil"><i class="fas nav-fas fa-user-circle orange-text"></i>Ver Perfil</a></li>
                <li><a class = "orange-text showOnCli showOnRep" id="btn-hist-nav"><i class="fas nav-fas fa-history orange-text"></i>Historial de Pedidos</a></li>
                <li><a href="carrito.jsp" class="orange-text showOnCli"><i class="fas nav-fas fa-shopping-cart orange-text"></i>Carrito</a></li>
                <li><a href="favoritos.jsp" class="orange-text showOnCli" id="btn-fav-nav"><i class="fas nav-fas fa-heart orange-text"></i>Favoritos</a></li>
                <li><a href="#" class="waves-effect waves-light btn cerrar-ses">Cerrar Sesión</a></li>
                </ul>

            </div>
        </nav>
	</div>
	<div class="my_container">
            <div> 
		<div class="section"><h3 class="header left-align">Menú de <%=est.getNombre()%></h3></div>
                <%if(est.getEmail().equals(sesion.getAttribute("Mail").toString())){%>
                <div class="fixed-action-btn">
                    <button class="btn-floating btn-large waves-effect waves-light red aprod" data-button-id="aprod" id="aprod"><i class="fas fa-plus"></i></button>                    
                </div> <%}%>
                <input type="hidden" id="email" name="email" value="<%=est.getEmail()%>" />
		<hr class="sound_waves-text">
		<div class="section items">
                    <div class="row hola"></div>
		</div>
                <div class="scrollCreator"></div>
            </div>
	</div>

	<footer class="page-footer">
		 <div class="container">
            <div class="row footerRow">
              <div class="col l6 s12 logoDiv">
                <img src="https://drive.google.com/uc?id=1-33i2fj72T0A40dxfZpDGTfWMyGbwj63" class = "responsive-img valign-wrapper align-center" id = "logoFooter">
              </div>
              <div class="col l4 offset-l2 s12">
                <h4 class="white-text">Contacto</h4>

                <ul class = "contacts-big">

                  <li>
                  	<i class="fab fa-facebook-square white-text"></i>
                  	<a class="white-text" href="#!">Facebook</a>
                  </li>
                  <li>
                  	<i class="fab fa-twitter white-text"></i>
                  	<a class="white-text" href="#!">Twitter</a>
                  </li>
                  <li>
                  	<i class="fab fa-instagram white-text"></i>
                  	<a class="white-text" href="#!">Instagram</a>
                  </li>

                </ul>

                <ul class = "contacts-small">

                  <li>
                  	<i class="fab fa-facebook-square white-text"></i>
                  	<i class="fab fa-twitter white-text"></i>
                  	<i class="fab fa-instagram white-text"></i>
                  </li>

                </ul>

              </div>
            </div>
          </div>

          <div class="footer-copyright">
            <div class="container white-text">
            	© 2019 CRAYDS
            </div>
          </div>

	</footer>
    <script src="libs/materialize/js/materialize.min.js"></script>

</body>
</html>

       
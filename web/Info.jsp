<%-- 
    Document   : Info
    Created on : 25/05/2021, 01:01:22 AM
    Author     : JUAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Información | Salud Velox</title>
    <link rel="icon" href= "images/EscudoVelox2.png">
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="Scripts/Basicos.js"></script>
    <link rel = "stylesheet" type = 'text/css' href = './Styles/Styles.css'>
    
    <script src="https://kit.fontawesome.com/9fb0a1aa63.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
</head>
<body>

    <header>
        <div class = "container logo-nav-container">
            <div class="info_titulo_principal">
                <p class = "logo animate__animated animate__zoomInLeft"><i class="fas fa-book-open"></i> Información</p>
            </div>
            <div class="info_titulo_responsive">
                <p class = "logo animate__animated animate__zoomInLeft"><i class="fas fa-book-open"></i> Info</p>
            </div>
            <div class = "espacio"></div>
            <span class="menu-icon animate__animated animate__zoomInRight">Ver Menú  <i class="fas fa-chevron-down"></i></span>
            <nav>
                <ul class = "animate__animated animate__zoomInRight animate__slow">
                    <li onclick="javascript:formulario()" id ="margenNav"><i class="far fa-smile"></i> ¡Formularios!</li>
                    <li onclick="javascript:resultado()"><i class="fas fa-poll"></i> Resultados</li>
                    <div class="espaciado"></div>
                    <li onclick="javascript:cuenta()" id ="margenNav2"><i class="fas fa-user-circle"></i> Cuenta</li>
                    <li onclick="javascript:chat()"><i class="fas fa-comments"></i> Foro</li>
               <%
                    HttpSession sesion = request.getSession();
            String usuer;
       
            
            if(sesion.getAttribute("user")!=null){
                usuer = sesion.getAttribute("user").toString();
                
            out.print("<a href='IniciarSesion.jsp?cerrar=true'><li>Cerrar Sesion de "+usuer+"</li> </a>");
               
                    
                
                
            }else{
                out.print("<script>location.replace('IniciarSesion.jsp');</script>");
        }     %>
                </ul>
            </nav>
        </div>
    </header>
    <section>
        <div id="arriba"></div>
        <main>
            <image class="imagenHumano animate__animated animate__pulse animate__infinite" src = 'images/EscudoVelox2.png' title="Presióname para regresar al inicio del sitio web <3" alt = "No se porque no carga :c" onclick="javascript:inicio()"></image>
            <a href="#ansiedad">
                <div class="info_cuadro">
                    <h4 class="info_titulo">Ansiedad</h4>
                    <image class="info_imagen animate__animated animate__pulse animate__infinite animate__slower animate__delay-2s" src = "./images/images_info/A.svg" title="Ansiedad" alt = "No se porque no carga :c"></image>
                    <h5 class = "centro">Click para más información <i class="far fa-hand-point-up"></i></h5>
                </div>
            </a>
            <a href="#depresion">
                <div class="info_cuadro">
                    <h4 class="info_titulo">Depresión</h4>
                    <image class="info_imagen animate__animated animate__pulse animate__infinite animate__slower animate__delay-3s" src = "./images/images_info/D.svg" title="Depresión" alt = "No se porque no carga :c"></image>
                    <h5 class = "centro">Click para más información <i class="far fa-hand-point-up"></i></h5>
                </div>
            </a>
            <a href="#estres">
                <div class="info_cuadro">
                    <h4 class= "info_titulo">Estrés</h4>
                    <image class="info_imagen animate__animated animate__pulse animate__infinite animate__slower animate__delay-2s" src = "images/images_info/E.svg" title="Estrés" alt = "No se porque no carga :c"></image>
                    <h5 class = "centro">Click para más información <i class="far fa-hand-point-up"></i></h5>
                </div>
            </a>
            <a href="#bipo">
                <div class="info_cuadro">
                    <h4 class="info_titulo">Bipolaridad</h4>
                    <image class="info_imagen animate__animated animate__pulse animate__infinite animate__slower animate__delay-3s" src = "images/images_info/B.svg" title="Bipolaridad" alt = "No se porque no carga :c"></image>
                    <h5 class = "centro">Click para más información <i class="far fa-hand-point-up"></i></h5>
                </div>
            </a>
            <a href="#TOC">
                <div class="info_cuadro">
                    <h4 class="info_titulo">TOC</h4>
                    <image class="info_imagen animate__animated animate__pulse animate__infinite animate__slower animate__delay-2s" src = "images/images_info/Toc.svg" title="Transtorno Obsesivo Compulsivo (TOC)" alt = "No se porque no carga :c"></image>
                    <h5 class = "centro">Click para más información <i class="far fa-hand-point-up"></i></h5>
                </div>
            </a>
            <a href="#TCA">
                <div class="info_cuadro">
                    <h4 class="info_titulo">TCA</h4>
                    <image class="info_imagen animate__animated animate__pulse animate__infinite animate__slower animate__delay-3s" src = "images/images_info/TCA.svg" title="Transtorno de Conducta Alimentaria (TCA)" alt = "No se porque no carga :c"></image>
                    <h5 class = "centro">Click para más información <i class="far fa-hand-point-up"></i></h5>
                </div>
            </a>
            <a href="#TC">
                <div class="info_cuadro">
                    <h4 class="info_titulo">TC</h4>
                    <image class="info_imagen animate__animated animate__pulse animate__infinite animate__slower animate__delay-2s" src = "images/images_info/TC.svg" title="Transtorno de Conducta (TC)" alt = "No se porque no carga :c"></image>
                    <h5 class = "centro">Click para más información <i class="far fa-hand-point-up"></i></h5>
                </div>
            </a>
            <a href="#Dislexia">
                <div class="info_cuadro">
                    <h4 class="info_titulo">Dislexia</h4>
                    <image class="info_imagen animate__animated animate__pulse animate__infinite animate__slower animate__delay-3s" src = "images/images_info/Dx.svg" title="Dislexia" alt = "No se porque no carga :c"></image>
                    <h5 class = "centro">Click para más información <i class="far fa-hand-point-up"></i></h5>
                </div>
            </a>
            <a href="#Autismo">
                <div class="info_cuadro">
                    <h4 class="info_titulo">Autismo</h4>
                    <image class="info_imagen animate__animated animate__pulse animate__infinite animate__slower animate__delay-2s" src = "images/images_info/Au.svg" title="Autismo" alt = "No se porque no carga :c"></image>
                    <h5 class = "centro">Click para más información <i class="far fa-hand-point-up"></i></h5>
                </div>
            </a>
            <a href="#TDA">
                <div class="info_cuadro info_margen_cuadro1">
                    <h4 class="info_titulo">TDA</h4>
                    <image class="info_imagen animate__animated animate__pulse animate__infinite animate__slower animate__delay-3s" src = "images/images_info/TDA.svg" title="Transtorno de Déficit de Atención" alt = "No se porque no carga :c"></image>
                    <h5 class = "centro">Click para más información <i class="far fa-hand-point-up"></i></h5>
                </div>
            </a>
            <a href="#SA">
                <div class="info_cuadro info_margen_cuadro2">
                    <h4 class="info_titulo">SA</h4>
                    <image class="info_imagen animate__animated animate__pulse animate__infinite animate__slower animate__delay-2s" src = "images/images_info/SA.svg" title="Síndrome de Asperger (SA)" alt = "No se porque no carga :c"></image>
                    <h5 class = "centro" id = "ansiedad">Click para más información <i class="far fa-hand-point-up"></i></h5>
                </div>
            </a>
            <div class="container1">
                <h4 class="info_titulo">Ansiedad</h4>
                <p>
                    La ansiedad es un sentimiento de miedo, temor e inquietud. Puede hacer que sude, se sienta inquieto y tenso, y tener palpitaciones. Puede ser una reacción normal al estrés. Por ejemplo, puede sentirse ansioso cuando se enfrenta a un problema difícil en el trabajo, antes de tomar un examen o antes de tomar una decisión importante. Si bien la ansiedad puede ayudar a enfrentar una situación, además de darle un impulso de energía o ayudarle a concentrarse, para las personas con trastornos de ansiedad el miedo no es temporal y puede ser abrumadora.
                    <div id="depresion"></div>
                </p>
                <a href = "#arriba" class="boton">Regresar <i class="far fa-arrow-alt-circle-up"></i></a>
                <p onclick="javascript:formulario()" class="boton2">Hacer Formulario <i class="far fa-smile"></i></p>
            </div>
            <div class="container1">
                <h4 class="info_titulo">Depresión</h4>
                <p>
                    La depresión se puede describir como el hecho de sentirse triste, melancólico, infeliz, abatido o derrumbado. La mayoría de nosotros se siente de esta manera de vez en cuando durante períodos cortos.
                    La depresión clínica es un trastorno del estado anímico en el cual los sentimientos de tristeza, pérdida, ira o frustración interfieren con la vida diaria durante un período de algunas semanas o más.
                    <div id="estres"></div>
                </p>
                <a href = "#arriba" class="boton">Regresar <i class="far fa-arrow-alt-circle-up"></i></a>
                <p onclick="javascript:formulario()" class="boton2">Hacer Formulario <i class="far fa-smile"></i></p>
            </div>
            <div class="container1">
                <h4 class="info_titulo">Estrés</h4>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae iste obcaecati omnis ipsa quo facere distinctio ut veniam incidunt, cupiditate ipsum commodi hic asperiores sequi qui possimus, sit minus architecto!
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae iste obcaecati omnis ipsa quo facere distinctio ut veniam incidunt, cupiditate ipsum commodi hic asperiores sequi qui possimus, sit minus architecto!
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae iste obcaecati omnis ipsa quo facere distinctio ut veniam incidunt, cupiditate ipsum commodi hic asperiores sequi qui possimus, sit minus architecto!
                    <div id="bipo"></div>
                </p>
                <a href = "#arriba" class="boton">Regresar <i class="far fa-arrow-alt-circle-up"></i></a>
                <p onclick="javascript:formulario()" class="boton2">Hacer Formulario <i class="far fa-smile"></i></p>
            </div>
            <div class="container1">
                <h4 class="info_titulo">Bipolaridad</h4>
                <p>
                    Trastorno que provoca altibajos emocionales, que van desde trastornos de depresión hasta episodios maníacos.
                    Se desconoce la causa exacta del trastorno bipolar, pero es posible que tenga que ver con una combinación de factores genéticos y ambientales y de la alteración de las sustancias químicas y las estructuras del cerebro.
                    <div id="TOC"></div>
                </p>
                <a href = "#arriba" class="boton">Regresar <i class="far fa-arrow-alt-circle-up"></i></a>
                <p onclick="javascript:formulario()" class="boton2">Hacer Formulario <i class="far fa-smile"></i></p>
            </div>
            <div class="container1">
                <h4 class="info_titulo">Transtorno Obsesivo Compulsivo</h4>
                <p>
                    Pensamientos excesivos (obsesiones) que llevan a comportamientos repetitivos (compulsiones).
                    El trastorno obsesivo compulsivo se caracteriza por los pensamientos irracionales y los temores (obsesiones) que provocan comportamientos compulsivos.                    
                    <div id="TCA"></div>
                </p>
                <a href = "#arriba" class="boton">Regresar <i class="far fa-arrow-alt-circle-up"></i></a>
                <p onclick="javascript:formulario()" class="boton2">Hacer Formulario <i class="far fa-smile"></i></p>
            </div>
            <div class="container1">
                <h4 class="info_titulo">Transtorno de Conducta Alimentaria</h4>
                <p>
                    Los trastornos de la conducta alimentaria son problemas relacionados con la forma en que comen las personas. Pueden ser muy perjudiciales para la salud de la persona, sus emociones y sus relaciones personales. Hay varios tipos distintos de trastornos de la conducta alimentaria.
                    <div id="TC"></div>
                </p>
                <a href = "#arriba" class="boton">Regresar <i class="far fa-arrow-alt-circle-up"></i></a>
                <p onclick="javascript:formulario()" class="boton2">Hacer Formulario <i class="far fa-smile"></i></p>
            </div>
            <div class="container1">
                <h4 class="info_titulo">Transtorno de Conducta</h4>
                <p>
                    Es una serie de problemas conductuales y emocionales que se presentan en niños y adolescentes. Los problemas pueden involucrar comportamiento desafiante o impulsivo, consumo de drogas o actividad delictiva.
                    <div id="Dislexia"></div>
                </p>
                <a href = "#arriba" class="boton">Regresar <i class="far fa-arrow-alt-circle-up"></i></a>
                <p onclick="javascript:formulario()" class="boton2">Hacer Formulario <i class="far fa-smile"></i></p>
            </div>
            <div class="container1">
                <h4 class="info_titulo">Dislexia</h4>
                <p>
                    La dislexia se presenta en niños con niveles normales de inteligencia y visión.
                    Algunos de los síntomas son el retraso para aprender a hablar y leer, y la dificultad para aprender nuevas palabras.
                    La mayoría de los niños con dislexia puede salir adelante en la escuela con la ayuda de tutores o programas de educación especializada.                    
                    <div id="Autismo"></div>
                </p>
                <a href = "#arriba" class="boton">Regresar <i class="far fa-arrow-alt-circle-up"></i></a>
                <p onclick="javascript:formulario()" class="boton2">Hacer Formulario <i class="far fa-smile"></i></p>
            </div>
            <div class="container1">
                <h4 class="info_titulo">Autismo</h4>
                <p>
                    El trastorno del espectro autista es una afección relacionada con el desarrollo del cerebro que afecta la manera en la que una persona percibe y socializa con otras personas, lo que causa problemas en la interacción social y la comunicación.
                    <div id="TDA"></div>
                </p>
                <a href = "#arriba" class="boton">Regresar <i class="far fa-arrow-alt-circle-up"></i></a>
                <p onclick="javascript:formulario()" class="boton2">Hacer Formulario <i class="far fa-smile"></i></p>
            </div>
            <div class="container1">
                <h4 class="info_titulo">Transtorno de Déficit de Atención</h4>
                <p>
                    Trastorno crónico caracterizado por la dificultad para prestar atención, la hiperactividad y la impulsividad.
                    El ADHD suele comenzar en la niñez y puede persistir hasta la edad adulta. Puede ocasionar baja autoestima, problemas en las relaciones y dificultades en la escuela o el trabajo.
                    Los síntomas incluyen hiperactividad y atención limitada.
                    El tratamiento incluye medicamentos y terapia conversacional.
                    <div id="SA"></div>
                </p>
                <a href = "#arriba" class="boton">Regresar <i class="far fa-arrow-alt-circle-up"></i></a>
                <p onclick="javascript:formulario()" class="boton2">Hacer Formulario <i class="far fa-smile"></i></p>
            </div>
            <div class="container1">
                <h4 class="info_titulo">Síndrome de Asperger</h4>
                <p>
                    El síndrome de Asperger es un trastorno del espectro autista que suele ser menos grave.
                    Las personas que padecen este trastorno pueden tener un comportamiento social inusual y un interés profundo en algunos temas específicos.
                    La terapia conductual y de formación en la comunicación permite a los pacientes con trastornos del aprendizaje socializar mejor.
                </p>
                <a href = "#arriba" class="boton">Regresar <i class="far fa-arrow-alt-circle-up"></i></a>
                <p onclick="javascript:formulario()" class="boton2">Hacer Formulario <i class="far fa-smile"></i></p>
            </div>
        </main>
    </section>
    <footer>
        <h3>Redes Sociales</h3>
        <ul>
            <li onclick="javascript:facebook()"><i class="fab fa-facebook-square"></i> Facebook</li>
            <li onclick="javascript:instagram()"><i class="fab fa-instagram"></i> Instagram</li>
            <li onclick="javascript:twitter()"><i class="fab fa-twitter"></i> Twitter</li>
        </ul>
        <h3>Correo Electrónico</h3>
        <ul>
            <li>velox.software.09@gmail.com</li>
        </ul>
        <h3>Página Web</h3>
        <ul>
            <li onclick="javascript:velox()">VeloxSoftware.com</a></li>
        </ul>
        <h3>Integrantes</h3>
        <div class="nombres">
            <ul>
                <li>Castañeda Rodríguez<br>Rafael Gil</li>
                <li>Coronado Segundo<br>Juan Yael</li>
                <li>Flores Zamora<br>Ithan Adrian</li>
                <li>Gallegos González<br>Gian Carlo</li>
                <li>Pérez López<br>Jesús Eduardo</li>
                <li>Salazar Valdez<br>Ángel Yahir</li>
            </ul>
        </div>
    </footer>
</body>
</html>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="../img/elements/fav.png">
    <!-- Author Meta -->
    <meta name="author" content="CodePixar">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
    <title>Real Estate</title>

    <link rel="stylesheet" href="<c:url value="/css/slider-pro.min.css"/>">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
    <!--
    CSS
    ============================================= -->
    <link rel="stylesheet" href="<c:url value="../css/linearicons.css"/>">
    <link rel="stylesheet" href="<c:url value="../css/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="../css/nice-select.css"/>">
    <link rel="stylesheet" href="<c:url value="../css/ion.rangeSlider.css"/>">
    <link rel="stylesheet" href="<c:url value="../css/ion.rangeSlider.skinFlat.css"/>">
    <link rel="stylesheet" href="<c:url value="../css/bootstrap.css"/>">
    <link rel="stylesheet" href="<c:url value="../css/main.css"/>">


</head>
<body>
<!-- Start Navbar Area -->
<jsp:include page="includes/navigacijskiMeni.jsp" />
<!-- End Navbar Area -->
<section class="generic-banner relative">
    <div class="container pt-30 pb-20">
        <div class="row align-items-center justify-content-center">
            <div class="col-lg-10">
            </div>
        </div>
    </div>
</section>
<br />

<main class="container">
    <section>
        <div class=" col-xs-12 col-lg-12 bold-black">
            <p style="font-size:x-large; float: left">tip nepremičnine: &nbsp </p>
            <p style="color: #f41068; font-size:x-large"> stanovanje</p>
        </div>
    </section>

    <div class="slider-pro" id="my-slider" style="margin-top: 30px">
        <div class="sp-slides">
            <!-- Slide 1 -->
            <div class="sp-slide">
                <img class="sp-image" src="../img/regija6.jpg"/>
            </div>

            <!-- Slide 2 -->
            <div class="sp-slide">
                <img class="sp-image" src="../img/regija5.jpg"/>
            </div>

            <!-- Slide 3 -->
            <div class="sp-slide">
                <img class="sp-image" src="../img/regija4.jpg"/>
            </div>

            <div class="sp-slide">
                <img class="sp-image" src="../img/regija3.jpg"/>
            </div>
            <div class="sp-slide">
                <img class="sp-image" src="../img/regija2.jpg"/>
            </div>
            <div class="sp-slide">
                <img class="sp-image" src="../img/regija1.jpg"/>
            </div>
        </div>

        <div class="sp-thumbnails">
            <img class="sp-thumbnail" src="../img/regija6.jpg"/>
            <img class="sp-thumbnail" src="../img/regija5.jpg"/>
            <img class="sp-thumbnail" src="../img/regija4.jpg"/>
            <img class="sp-thumbnail" src="../img/regija3.jpg"/>
            <img class="sp-thumbnail" src="../img/regija2.jpg"/>
            <img class="sp-thumbnail" src="../img/regija1.jpg"/>
        </div>
    </div>


        <section class="col-xs-12 col-lg-12 section-gap">
            <div class=" col-xs-12 col-lg-12 bold-black">
                <p style="font-size:x-large">MARIBOR, Smetanova ulica 17</p>
                <p style="color: #f41068; font-size:xx-large">18.500€</p></br>
        </div>
            <div class="row">
                <div class="col-xs-12 col-md-8 col-lg-8 ">
                    <div class="statistika">
                   <%--    <c:choose>
                                <c:when test = "${nepremicnina.tk_id_vrstaNepremicnine==1}">--%>
                                <div class="row">
                                    <div class="col-xs-12 col-md-12 col-lg-6">
                                        <div class="bold-black"><i class="fa fa-bed"></i>    Število sob</div>
                                        <div> ${nepremicnina.steviloSob}</div>
                                    </div>
                                    <div class="col-xs-12 col-md-12 col-lg-6">
                                        <div class="bold-black"><i class="fa fa-building"></i>   Nadstropje</div>
                                        <div> ${nepremicnina.nadstropje}</div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-md-12 col-lg-6">
                                        <div class="bold-black"><i class="fa fa-expand"></i>    Kvadratura (m2)</div>
                                        <div> ${nepremicnina.skupnaKvadratura}m2</div>
                                    </div>
                                    <div class="col-xs-12 col-md-12 col-lg-6">
                                        <div class="bold-black"><i class="fa fa-wrench"></i>   Leto izgradnje</div>
                                        <div> ${nepremicnina.letoIzgradnje}</div>
                                    </div>
                                </div>
                       <%--    </c:when>
                                <c:when test = "${nepremicnina.tk_id_vrstaNepremicnine==2}">
                             <div class="row">
                                        <div class="col-xs-12 col-md-12 col-lg-6">
                                            <div class="bold-black"><i class="fa fa-home"></i>    Vrsta hiše</div>
                                            <div> ${nepremicnina.vrstaHise}</div>
                                        </div>
                                        <div class="col-xs-12 col-md-12 col-lg-6">
                                            <div class="bold-black"><i class="fa fa-expand"></i>   Kvadratura hiše (m2)</div>
                                            <div> ${nepremicnina.kvadraturaBivalnegaProstora}m2</div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-12 col-md-12 col-lg-6">
                                            <div class="bold-black"><i class="fa fa-tree"></i>    Kvadratura zemljišča(m2)</div>
                                            <div> ${eapremicnina.skupnaKvadratura}m2</div>
                                        </div>
                                        <div class="col-xs-12 col-md-12 col-lg-6">
                                            <div class="bold-black"><i class="fa fa-wrench"></i>   Leto izgradnje</div>
                                            <div> ${nepremicnina.letoIzgradnje}</div>
                                        </div>
                                    </div>
                          </c:when>
                            <c:when test = "${nepremicnina.tk_id_vrstaNepremicnine==3}">
                              <div class="row">
                                    <div class="col-xs-12 col-md-12 col-lg-6">
                                        <div class="bold-black"><i class="fa fa-expand"></i>    Velikost zemljišča</div>
                                        <div> ${nepremicnina.skupnaKvadratura}m2</div>
                                    </div>
                                    <div class="col-xs-12 col-md-12 col-lg-6">
                                        <div class="bold-black"><i class="fa fa-tree"></i>   Vrsta posesti</div>
                                        <div> ${nepremicnina.vrstaPosesti}</div>
                                    </div>
                                </div>
                            </c:when>
                        </c:choose>--%>
                            <hr>
                        <div class="row">
                            <div class="col-xs-12 col-md-12 col-lg-12">
                                <p class="bold-black">Opis nepremičnine</p>
                              <p>
                                  ${napremicnina.opis}

                               </br> V naselju Lokrovec prodamo starejšo hišo z enim večjim in enim manjšim gospodarskim poslopjem. Hiša je delno obnovljena, velikost parcel je 1359 m2 in se nahajajo ob asfaltni cesti, ob kateri poteka tudi na novo zgrajena infrastruktura. (vodovod, kanalizacija,…).
                                Zelo mirno okolje nedaleč od Celja, v bližini je rekreativno območje Šmartinskega jezera in golf igrišče.
                                Ugodno prodamo, v račun vzamemo stanovanje ali manjše zazidljivo zemljišče.
                              </p>
                            </div>
                        </div>

                 <%--   <c:if test="${nepremicnina.VrstaNepremičnine_idVrstaNepremičnine!=3}" >
                         <hr>--%>
                       <div class="row">
                                <div class="col-xs-12 col-md-12 col-lg-12">
                                    <h4>Značilnosti/posebnosti nepremičnine:</h4>
                                    </br>
                                    <div class="col-xs-12 col-md-4 col-lg-4">
                                        <i class="fa fa-check"></i>  BALKON
                                    </div>
                                    <div class="col-xs-12 col-md-4 col-lg-4">
                                        <i class="fa fa-check"></i> GARAŽA
                                    </div>
                                    <div class="col-xs-12 col-md-4 col-lg-4">
                                        <i class="fa fa-times"></i> PRENOVLJENO
                                    </div>
                                </div>
                        </div>
                         <%-- </c:if> --%>
                    </div>
                </div>
                    <div  class="col-xs-12 col-md-4 col-lg-4 ">
                        <div  class="statistika">
                            <div class="text-center bold-black">NEPREMIČNINSKI AGENT</div></br>
                            <div class="text-center">
                            <img src="../img/i8.jpg" style='height:180px; width:180px' class="profil-slika img-thumbnail mb-1"/></div>
                            <div class="text-center bold-black">IME PRIIMEK</div></br>
                            <div ><i class="fa fa-envelope"></i>  Email: </div>
                            <div ><i class="fa fa-phone"></i>  Tel: </div>
                        </div>
                        <div  class="statistika" style="height: 50%; max-height: 400px">
                            <iframe width="100%" height="100%" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJf4rU2K93b0cRLmIL3dGAiTk&key=AIzaSyAJrW-1laCws0wiUaBUkFlj3mcfRbIOaB8" allowfullscreen></iframe>
                        </div>
                    </div>

                 </div>

        </section>

</main>












<!-- start footer Area
<jsp:include page="includes/footer.jsp" />
<!-- End footer Area -->
</div>
<script src="<c:url value="/js/vendor/jquery-2.2.4.min.js"/>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
<script src="<c:url value="/js/vendor/bootstrap.min.js"/>"></script>
<script src="<c:url value="/js/jquery.ajaxchimp.min.js"/>"></script>
<script src="<c:url value="/js/jquery.nice-select.min.js"/>"></script>
<script src="<c:url value="/js/jquery.sticky.js"/>"></script>
<script src="<c:url value="/js/ion.rangeSlider.js"/>"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="<c:url value="/js/jquery.magnific-popup.min.js"/>"></script>
<script src="<c:url value="/js/main.js"/>"></script>
<script src="<c:url value="/js/jquery.sliderPro.min.js"/>"></script>
<script>
$(document).ready(function (){
    $("#my-slider").sliderPro({
        width: 800,
        height:400,
        orientation: 'vertical',
        thumbnailsPosition: 'right',
        buttons: false,
        thumbnailArrows: true,
        thumbnailPointer: true,
        autoplay: false
    });
});
</script>
</body>
</html>
<%-- 
    Document   : home
    Created on : Oct 18, 2023, 11:03:40 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Basic -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- Site Metas -->
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>FruitShop</title>

        <!-- slider stylesheet -->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />
        <script src="https://kit.fontawesome.com/9a14d14ca3.js" crossorigin="anonymous"></script>
        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

        <!-- fonts style -->
        <link href="https://fonts.googleapis.com/css?family=Baloo+Chettan|Dosis:400,600,700|Poppins:400,600,700&display=swap" rel="stylesheet" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />

    </head>

    <body>
        <div class="hero_area">
            <!-- slider section -->
            <section class=" slider_section position-relative">
                <div id="carouselExampleControls" class="carousel slide " data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="img-box">
                                <img src="images/banner-header2.jpg" alt="">
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="img-box">
                                <img src="images/slider-img.jpg" alt="">
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="img-box">
                                <img src="images/baner_header3.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </section>
            <!-- end slider section -->
        </div>

        <!-- nav section -->

        <%@include file="navbar.jsp" %>

        <!-- end nav section -->

        <!-- search -->
        <br>
        <div class="header-search">
            <div class="topnav" style="margin: 0px 20px">
                <form action="search" method="get">
                    <input type="text" placeholder="search for...." name="key"/>
                    <button>
                        <img src="images/search_icon.png" width="15px" 
                             height="15px" alt="search"/>
                    </button>    
                </form>
            </div> 
        </div>


        <!-- shop section -->

        <section class="shop_section layout_padding">
            <div class="container">
                <div class="box">
                    <div class="detail-box">
                        <h2>
                            Fruit shop
                        </h2>
                        <p>
                            There are many standard and fresh fruits that you can buy and experience
                        </p>
                    </div>
                    <div class="img-box">
                        <img src="images/shop-img.jpg" alt="">
                    </div>
                </div>
            </div>
        </section>

        <!-- end shop section -->

        <!-- about section -->

        <section class="about_section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 px-0">
                        <div class="img-box">
                            <img src="images/about-img.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="detail-box">
                            <div class="heading_container">
                                <hr>
                                <h2>
                                    About Our Fruit Shop
                                </h2>
                            </div>
                            <p>
                                Fruit Shop là hệ thống bán lẻ TRÁI CÂY NHẬP KHẨU cao cấp trực thuộc công ty TNHH XNK Thương mại An Minh (An Minh.IET). 
                            </p>
                            <a href="about">
                                Read More
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- end about section -->


        <!-- contact section -->
        <section class="contact_section layout_padding" style="margin-bottom: 100px;">
            <div class="container">
                <div class="offset-lg-2 col-md-10 offset-md-1">
                    <div class="heading_container">
                        <hr>
                        <h2>
                            Map Location
                        </h2>
                    </div>
                </div>
                <div class="col-lg-12" style="margin-left: 20%;">
                    <div class="map_container">
                        <div class="map-responsive">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.491272819393!2d105.52392847535481!3d21.013020180632413!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abc60e7d3f19%3A0x2be9d7d0b5abcbf4!2zQsOyIFTDqm4gTOG7rWEgUXXDoW4!5e0!3m2!1sen!2sus!4v1697603662532!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- end contact section -->

        <%@include file="footer.jsp" %>


    </body>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>

</html>

<%-- 
    Document   : detail
    Created on : Oct 23, 2023, 5:59:34 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

        <!-- fonts style -->
        <link href="https://fonts.googleapis.com/css?family=Baloo+Chettan|Dosis:400,600,700|Poppins:400,600,700&display=swap" rel="stylesheet" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
        <script src="https://kit.fontawesome.com/9a14d14ca3.js" crossorigin="anonymous"></script>
    </head>

    <body class="sub_page">

        <!-- nav section -->

        <%@include file="navbar.jsp" %>

        <!-- end nav section -->

        <!-- main -->
        <a href="fruit?cp=1"><p style="margin-left: 20px; margin-top: 10px; font-size: 18px"><--Back</p></a>
        <div class="container" style="margin: 100px auto;">
            <div class="row m-0">
                <div class="col-lg-6 left-side-product-box pb-3" >
                    <img src="${detail.image}" class="border p-3" style="width: 100%">
                </div>
                <div class="col-lg-6">
                    <div class="right-side-pro-detail border p-3 m-0">
                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="m-0 p-0">${detail.name}</h1>
                            </div>
                            <div class="col-lg-12">
                                <p class="m-0 p-0 price-pro">${detail.price} VND</p>
                                <hr class="p-0 m-0">
                            </div>
                            <div class="col-lg-12 pt-2">
                                <h3>Product Detail</h3>
                                <span>${detail.description}</span>
                                <hr class="m-0 pt-2 mt-2">
                            </div>
                            <form action="cart" method="post" class="col-lg-12">
                                <input type="text" name="id" value="${detail.id}" hidden=""> 
                                <div class="col-lg-12">
                                    <h6>Quantity :</h6>
                                    <input type="number" name="num" class="form-control text-center w-100" min="1" value="1" max="${detail.quantity}">
                                </div>
                                <div class="col-lg-12 mt-3">
                                    <div class="row">
                                        <div class="col-lg-6"> 
                                            <input type="submit" class="btn btn-success w-100" name="buy" value='Buy'/>  
                                        </div>
                                        <div class="col-lg-6 pb-2">
                                            <input type="submit" class="btn btn-danger w-100" name="addtocart" value='Add To Cart'/>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end main -->


        <!-- footer -->

        <%@include file="footer.jsp" %>

    </body>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>

</html>

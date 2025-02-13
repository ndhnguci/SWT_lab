<%-- 
    Document   : cart
    Created on : Oct 26, 2023, 9:19:07 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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



        <!-- end nav section -->

        <!-- main -->
        <h2 style="margin: 20px; text-align: center">List of Products</h2>
        <div class="container">
            <div style="margin-bottom: 100px">
                <!--                <a href="HistoryOrders"><p style="text-align: right">History Orders</p></a>-->
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">No</th>
                            <th scope="col" style="padding-left: 6%">Product Name</th>
                            <th scope="col" style="padding-left: 13%">Quantity</th>
                            <th scope="col">Price</th>
                            <th scope="col">Total</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>

                        <c:set var="o" value="${sessionScope.cart}"></c:set>
                        <c:set var="t" value="0"/>
                        <c:forEach items="${o.items}" var="i">
                            <c:set var="t" value="${t+1}"/>
                            <tr>
                                <td>${t}</td>
                                <td style="padding-left: 8%">${i.product.name}</td>
                                <td style="padding-left: 13%">
<!--                                    <a href="process?num=-1&productID=${i.product.id}">-</a>-->
                                    <input type="text" readonly value="${i.getQuantity()}" style="width: 20%; padding-left: 5%">
<!--                                    <a href="process?num=1&productID=${i.product.id}">+</a>-->
                                </td>
                                <td><fmt:formatNumber pattern="###,### VND" value="${i.price}"/></td>
                                <td><fmt:formatNumber pattern="###,### VND" value="${i.price * i.quantity}"/></td>
                                <td>
                                    <form action="process" method="post">
                                        <input type="hidden" name="id" value="${i.product.id}">
                                        <button type="submit" style="background: none; border: none"><i class="fa-sharp fa-solid fa-trash"></i></button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="d-flex flex-wrap justify-content-between align-items-center pb-4" style="margin-top: 120px">
                    <div class="d-flex" style="margin-left: 88%">
                        <div class="text-right mt-4">
                            <label class="text-muted font-weight-normal m-0">Total price</label>
                            <div class="text-large"><strong><fmt:formatNumber pattern="###,### VND" value="${total}"/></strong></div>
                        </div>
                    </div>
                </div>
                <form action="checkout" method="post">
                    <div class="float-right">
                        <button type="button" class="btn btn-lg btn-default md-btn-flat mt-2 mr-3"><a href="fruit?cp=1">Back to shopping</a></button>
                        <button type="submit" class="btn btn-lg btn-primary mt-2">Checkout</button>
                    </div>
                </form>
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
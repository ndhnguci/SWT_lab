<%-- 
    Document   : contact
    Created on : Oct 18, 2023, 11:04:33 AM
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


        <!-- contact section -->
        <section class="contact_section layout_padding">
            <div class="container-fluid">
                <div class="row">
                    <a href="fruit?cp=1" style="margin-left: 20px"><--Back</a>
                    <div class="offset-lg-2 col-md-10 offset-md-1">
                        <div class="heading_container">
                            <hr>
                            <h2>
                                Add new product
                            </h2>
                        </div>
                    </div>
                </div>

                <div class="layout_padding2-top">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-3 col-md-5 offset-md-2">
                            <div class="contact_form-container">
                                <form action="add" method="post" id="myForm">
                                    <div>
                                        <input type="text" placeholder="product name" name="proname" required/>
                                    </div>
                                    <div>
                                        <label>Category</label>
                                        <select name="cateID">
                                            <c:forEach items="${listCate}" var="o">
                                                <option value="${o.id}">${o.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div>
                                        <input type="text" class="message_input" placeholder="Description" name="des" required />
                                    </div>
                                    <div>
                                        <input type="text" placeholder="Price" name="price" id="myInput" required/>
                                    </div>
                                    <div>
                                        <input type="text" placeholder="Image" name="image" required/>
                                    </div>
                                    <div>
                                        <input type="text" placeholder="Quantity" name="quantity" required/>
                                    </div>
                                    <div>
                                        <button type="submit">
                                            Add
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end contact section -->


        <%@include file="footer.jsp" %>



    </body>

    <script>
        const myForm = document.getElementById("myForm");
        const myInput = document.getElementById("myInput");

        myForm.addEventListener("submit", function (event) {
            const inputValue = myInput.value.trim();
            if (!isValidDouble(inputValue) || parseFloat(inputValue) <= 0) {
                alert("Vui lòng nhập giá hợp lệ!");
                event.preventDefault();
            }
        });

        function isValidDouble(value) {
            return !isNaN(parseFloat(value)) && isFinite(value);
        }
    </script>


    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>

</html>

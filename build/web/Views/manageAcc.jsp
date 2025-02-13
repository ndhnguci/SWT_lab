<%-- 
    Document   : manageAcc
    Created on : Oct 26, 2023, 10:04:47 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <style>
            .container-fluid {
                display: flex;
            }
        </style>
        <script src="https://kit.fontawesome.com/9a14d14ca3.js" crossorigin="anonymous"></script>
    </head>



    <body class="sub_page">
        <!-- nav section -->

        <%@include file="navbar.jsp" %>

        <!-- end nav section -->
        <div class="container-fluid" style="margin: 50px auto">
            <div class="col-lg-9">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">No</th>
                            <th scope="col">Fullname</th>
                            <th scope="col">Email</th>
                            <th scope="col">Address</th>
                            <th scope="col">Phone</th>
                            <th scope="col">User</th>
                            <th scope="col">Password</th>
                            <th scope="col">Role</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:set value="0" var="t"/>
                        <c:forEach items="${listCus}" var="cus">
                            <c:set var="t" value="${t+1}"/>
                            <tr>
                                <td>${t}</td>
                                <td>${cus.fullName}</td>
                                <td>${cus.email}</td>
                                <td>${cus.address}</td>
                                <td>${cus.phoneNumber}</td>
                                <td>${cus.user}</td>
                                <td>${cus.pass}</td>
                                <td>${cus.checkGender()}</td>
                                <c:if test="${cus.role == false}">
                                    <td>
                                        <a href="managerAcc?cusID=${cus.id}">Update</a>
                                        <a href="deletecus?cusID=${cus.id}">Delete</a>
                                    </td>
                                    </c:if>
                                    <c:if test="${cus.role == true}">
                                    <td></td>
                                </c:if>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
            </div>

            <div class="col-lg-3">
                <form action="managerAcc" method="post">
                    <input type="hidden" name="id" value="${updateCus.id}">
                    <div class="form-group">
                        <label>Fullname</label>
                        <input type="text" class="form-control" id="inputAddress" 
                               placeholder="Fullname" name="name" value="${updateCus.fullName}">
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Email</label>
                            <input type="email" class="form-control" id="inputEmail4" 
                                   placeholder="Email" name="email" value="${updateCus.email}">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Phone number</label>
                            <input type="text" class="form-control" id="inputPassword4" 
                                   placeholder="Phone number" name="phone" value="${updateCus.phoneNumber}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Address</label>
                        <input type="text" class="form-control" id="inputAddress" 
                               placeholder="Address" name="address" value="${updateCus.address}">
                    </div>
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" class="form-control" id="inputAddress" 
                               placeholder="Username" name="user" value="${updateCus.user}">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="text" class="form-control" id="inputAddress" 
                               placeholder="Password" name="pass" value="${updateCus.pass}">
                    </div>
                    <button type="submit" class="btn btn-primary">Update</button>
                </form>
            </div>
        </div>

        <%@include file="footer.jsp" %>

    </body>


    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>

</html>
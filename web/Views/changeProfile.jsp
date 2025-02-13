<%-- 
    Document   : changeProfile
    Created on : Oct 28, 2023, 6:25:53 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<head>
    <title>User Profile</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
    <hr>
    <div class="container bootstrap snippet">
        <div class="row">
            <div class="col-sm-10"><h1>Hi, ${sessionScope.account.fullName}</h1></div>
            <div class="col-sm-2"><a href="home" class="pull-right"><img title="Back to shop" class="img-circle img-responsive" src="images/FruitShop-logo.png" alt="BackToShop"></a></div>
        </div>
        <div class="row">
            <div class="col-sm-3"><!--left col-->
                <div class="text-center">
                    <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
                </div></hr><br>
            </div><!--/col-3-->
            <div class="col-sm-9">
                <h2 style="color: green">${ms2}</h2>
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#home">User Profile</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <hr>
                        <form class="form" action="changeProfile" method="post" id="registrationForm">
                            <input type="hidden" name="id" value="${sessionScope.account.id}">
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <label for="full_name"><h4>Full Name</h4></label>
                                    <input type="text" class="form-control" name="name" id="first_name" 
                                           value="${sessionScope.account.fullName}" required placeholder="Full Name">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="phone"><h4>Phone</h4></label>
                                    <input type="text" class="form-control" name="phone" id="phone" value="${sessionScope.account.phoneNumber}"
                                           required   placeholder="enter phone">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="email"><h4>Email</h4></label>
                                    <input type="email" class="form-control" name="email" 
                                           id="email" placeholder="you@email.com" value="${sessionScope.account.email}" readonly="" title="enter your email.">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <label for="address"><h4>Address</h4></label>
                                    <input type="text" class="form-control" id="location"
                                           value="${sessionScope.account.address}" required name="address" placeholder="somewhere" title="enter a location">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <br>
                                    <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                    <label style="color: green"> ${ms}</label>
                                </div>
                            </div>
                        </form>
                        <hr>
                        <div class="form-group">
                            <div class="col-xs-12" style="margin-top: 30px">
                                <h3><a href="ChangePass">Change Password</a></h3>
                            </div>
                              <div class="col-xs-12" >
                                <h3><a href="orderhistory">Order History</a></h3>
                            </div>
                        </div>
                    </div><!--/tab-pane-->

                </div><!--/tab-pane-->

            </div><!--/tab-content-->

        </div><!--/col-9-->

    </div><!--/row-->
</body>



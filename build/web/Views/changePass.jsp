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
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#home">Change Password</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <hr>
                        <form class="form" action="ChangePass" method="post" id="registrationForm">
                            <input type="hidden" name="user" value="${sessionScope.account.user}">
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <label for="password"><h4>Old Password</h4></label>
                                    <input type="password" class="form-control" name="opass" required id="opassword" placeholder="Old Password" title="enter your password.">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <label for="password"><h4>New Password</h4></label>
                                    <input type="password" class="form-control" name="npass" required id="npassword" placeholder="New Password" title="enter your password.">
                                </div>
                                <div class="col-xs-12">
                                    <label for="password"><h4>Confirm Password</h4></label>
                                    <input type="password" class="form-control" required id="cpassword" placeholder="Confirm Password" title="enter your password.">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <br>
                                    <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Change</button>
                                    <label style="color: red"> ${ms1}</label>
                                </div>
                            </div>
                        </form>
                        <hr>
                    </div><!--/tab-pane-->

                </div><!--/tab-pane-->

            </div><!--/tab-content-->

        </div><!--/col-9-->

    </div><!--/row-->
</body>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        var newPasswordInput = document.getElementById("npassword");
        var confirmPasswordInput = document.getElementById("cpassword");
        var submitButton = document.querySelector("form#registrationForm button[type='submit']");
        var errorLabel = document.querySelector("form#registrationForm label[style='color: red']");

        submitButton.addEventListener("click", function (event) {
            if (newPasswordInput.value !== confirmPasswordInput.value) {
                errorLabel.textContent = "Confirmation password does not match";
                event.preventDefault(); // Ngừng việc gửi biểu mẫu nếu mật khẩu không khớp.
            } else {
                errorLabel.textContent = "";
            }
        });
    });
</script>

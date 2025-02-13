<%-- 
    Document   : register
    Created on : Oct 18, 2023, 7:24:34 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Resigter</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <script src="https://kit.fontawesome.com/9a14d14ca3.js" crossorigin="anonymous"></script>
        <style>
            body {
                margin-top: 50px;
                background-image: url("https://images2.alphacoders.com/109/1091113.jpg");
                font-family: sans-serif;
            }
            .form {
                max-width: 500px;
                margin: -20px auto;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 8px;
                background-color: #020817;
                opacity: 0.9;
            }
            .icon {
                color: rgb(204, 174, 185);
                font-size: 40px;
                transition: all 0.3s ease;
            }
            .icon:hover {
                font-size:30px;
            }
            .form-header{
                height: 40px;
                width: 40px;
            }

            .form h2 {
                text-align: center;
                margin-top: 10px;
                margin-bottom: 17px;
                color: white;
                font-weight: 700;
            }
            .form-row {
                display: flex;
                margin-bottom: 20px;
            }

            .form-row .form-group {
                flex: 1;
                margin-right: 20px;
            }

            .form-row .form-group:last-child {
                margin-right: 0;
            }

            .form-group label {
                display: block;
                margin: 14px 0px;
                color: white;
            }
            .form-group input,
            .form-group input.form-attribute {
                padding: 15px;
                border: 1px solid #58b5e8;
                border-radius: 5px;
                background-color: #020817;
                color: white;
            }

            .form-group input {
                width: 90%;
            }

            .form-group input.form-attribute {
                width: 95%;
            }

            input[type="submit"] {
                width: 100%;
                padding: 14px;
                font-size: 15px;
                color: #fff;
                border: none;
                border-radius: 10px;
                cursor: pointer;
                background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));

            }

            input[type="submit"]:hover
            {
                background: linear-gradient(45deg,#0ABFBC, #FC354C);
            }

            p {
                margin-top: 20px;
                color: white;
                text-align: center;
            }

            a {
                color: white;
                text-decoration: none;
            }
            a:hover {
                text-decoration: none;
                color: red;
            }

        </style>
    </head>
    <body>
        <div class="form">
            <h2>Register</h2>
            <p style="color: red">${requestScope.error}</p>
            <form action="register" method="post">
                <div class="form-row">
                    <div class="form-group">
                        <label>Fullname</label>
                        <input class="form-attribute" type="text" name="fullname" placeholder="Fullname" required>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <label>Phone</label>
                        <input type="text" name="phone" placeholder="Phone number" required>
                    </div>

                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" name="email" placeholder="Email" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Address</label>
                    <input class="form-attribute" type="text" name="address" placeholder="Address" required>
                </div>

                <div class="form-group">
                    <label>Username</label>
                    <input class="form-attribute" type="text" name="user" placeholder="Username" required>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label>Password</label>
                        <input class="form-attribute" type="password" name="pass" placeholder="Password" required>
                    </div>
                </div>

                <input id="submit" type="submit" value="SUBMIT"></input>

                <p>Do you already have an account? 
                    <a href="login" style="font-family: arial; font-weight: bold">Login</a>
                </p>
            </form>
        </div>
    </body>
</html>
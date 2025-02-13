<%-- 
    Document   : navbar
    Created on : Oct 20, 2023, 11:34:27 PM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="nav_section">
    <div class="container">
        <div class="custom_nav2">
            <nav class="navbar navbar-expand custom_nav-container ">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div class="d-flex  flex-column flex-lg-row align-items-center">
                        <ul class="navbar-nav ">
                            <c:if test="${sessionScope.account == null}">
                                <li class="nav-item active">
                                    <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="about">About </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="fruit?cp=1">Shop </a>
                                </li>
                                <c:if test="${sessionScope.account == null}">
                                    <li class="nav-item">
                                        <a class="nav-link" href="login">Login</a>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account != null}">
                                    <li class="nav-item">
                                        <a class="nav-link" href="logout">Logout</a>
                                    </li>
                                </c:if>
                            </c:if>

                            <c:if test="${sessionScope.account.role == false}">
                                <li class="nav-item active">
                                    <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="fruit?cp=1">Shop </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="changeProfile">Change Profile</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="cart"><i class="fa-solid fa-cart-shopping"></i> ${sessionScope.size}</a>
                                </li>
                                <c:if test="${sessionScope.account == null}">
                                    <li class="nav-item">
                                        <a class="nav-link" href="login">Login</a>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account != null}">
                                    <li class="nav-item">
                                        <a class="nav-link" href="logout">Logout</a>
                                    </li>
                                </c:if>
                            </c:if>

                            <c:if test="${sessionScope.account.role == true}">
                                <li class="nav-item active">
                                    <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="fruit?cp=1">Manage products</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="managerAcc">Manage account</a>
                                </li>
                                 <li class="nav-item">
                                    <a class="nav-link" href="manageorder">Manage Order</a>
                                </li>
                                <c:if test="${sessionScope.account == null}">
                                    <li class="nav-item">
                                        <a class="nav-link" href="login">Login</a>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account != null}">
                                    <li class="nav-item">
                                        <a class="nav-link" href="logout">Logout</a>
                                    </li>
                                </c:if>
                            </c:if>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</section>
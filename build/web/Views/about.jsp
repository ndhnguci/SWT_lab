<%-- 
    Document   : about
    Created on : Oct 18, 2023, 11:04:42 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <!-- about section -->

        <section class="about_section layout_padding">
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
                                Sau 6 năm hoạt động, Fruit shop đã có 16 cửa hàng trên cả nước Việt Nam. Kinh doanh kết hợp với tầm nhìn công nghệ, công ty An Minh đã bắt tay (hợp tác) 
                                với công ty Real Fast Technology để chính thức lấn sân vào lĩnh vực thương mại điện tử,
                                áp dụng công nghệ 4.0 vào hệ thống vận hành.
                            </p>

                            <br/>
                            <div class="heading_container">
                                <h2>
                                    Sứ Mệnh
                                </h2>
                            </div>
                            <p>
                                Vì một Việt Nam khỏe mạnh, Fruit Shop đem đến 
                                nguồn thực phẩm trái cây ngoại sạch cho cộng đồng. 
                                Thông qua việc đem đến nguồn trái cây, thực phẩm sạch, 
                                tốt cho khỏe từ khắp mọi nơi trên thế giới về Việt Nam; 
                                đem đến sức khỏe bền lâu cho người dân. Chỉ có công dân khỏe mạnh 
                                mới có thể làm cho một quốc gia khỏe mạnh.
                            </p>

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- end about section -->

      <%@include file="footer.jsp" %>

    </body>

    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>

</html>

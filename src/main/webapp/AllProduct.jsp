<%@page import="com.demo.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.demo.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
        <link rel="stylesheet" href="css/AllNewProduct.css"/>
</head>
<body>
<section id="header">
        <a href="index.jsp"><img src="Images/MobileShopLogo.png" class="logo" height="40px" width="140px"></a>
        <div>
            <ul id="navbar">
                <li><a class="active" href="#header">Home</a></li>     
                <li><a href="ProductNewServlet">New Products</a></li>
                <li><a href="#Service">Service</a></li>
                <li><a href="#aboutus">About Us</a></li>
             
                <li id="lg-user"><a href="Login.jsp"><i class="far fa-user"></i></a></li>
            </ul>
        </div>
    <!-- <div id="mobile">
        <a href="#"><i class="far fa-shopping-bag"></i></a>
    	<a href="#"><i class="far far fa-user"></i></a>
        <i id="bar" class="fas fa-outdent"></i>
    </div> -->
    </section>  

   <!--  <section id="homeImg">
       <img src="Images/HomeImg.gif" height="520px" width="100%"> 
    </section>
 -->
   
    <section id="products-list" class="section-p1">
        <h2>Our New Products</h2>
        <!-- <p>All Brands under One Roof!</p> -->
        <div class="container">
            <div class="row product-container">
                <c:forEach var="pd" items="${plpd}">
                    <div class="col-md-3">
                        <div class="product">
                            <!-- <img src="Images/MobileImg.jpg"> -->
                             <img src="${pageContext.request.contextPath}/uploads/${pd.imageUrl}" alt="P Image" width="100" height="100">
                            <div class="product-description">
                                <span>${pd.getPname()}</span> 
                                <h5>${pd.getPram()}, ${pd.getPstorage()}</h5>  
                                <h5>${pd.getPcolor()}</h5>
                                <div class="star">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                                <h4>${pd.getPprice()}</h4>
                            </div>
                             <%-- <a href="product-details.jsp?productName=${pd.getPname()}&productPrice=${pd.getPprice()}">
    <button>Add Cart</button>
</a> --%>
                           <!--  <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
                            <button>Buy Now</button> -->
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </section>
   
      </section><section id="aboutus">
    <div class="welcome py-sm-5 py-4">
        <div class="container">
                 <center><h2>About Us</h2></center><br>
            <div class="row">
                <div class="col-lg-6 welcome-left">
                    <h4 class="my-sm-3 my-2 text-warning">Mobileshop, incorporated in 2023, is a mobile manufacturer that produces a wide range of Smartphones.</h4>
                    <p>Mobileshop is a staunch supporter of the Indian government's Make-in-India project and now it maintains a completely self-owned full-scale manufacturing facility.

                        The brand strives to become a global leader in technology-driven innovation in smartphones category, which impacts the lives of all its consumers. We aim to provide every Indian with the finest of mobile technology.</p>
                </div>
                <div class="col-lg-6 welcome-right-top mt-lg-0 mt-sm-5 mt-4">
                    <img src="Images/AboutUs.jpg" class="img-fluid" alt=" ">
                </div>
            </div>
        </div>
    </div>
</section>
    <section id="Service" class="list-section pt-80 pb-80">
    <div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <div class="list-box d-flex align-items-center">
                            <div class="list-icon">
                                <i class="fas fa-shipping-fast"></i>
                            </div>
                            <div class="content">
                                <h3>Free Shipping</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <div class="list-box d-flex align-items-center">
                            <div class="list-icon">
                                <i class="fas fa-phone-volume"></i>
                            </div>
                            <div class="content">
                                <h3>24/7 Support</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <div class="list-box d-flex justify-content-start align-items-center">
                            <div class="list-icon">
                                <i class="fas fa-sync"></i>
                            </div>
                            <div class="content">
                                <h3>Refund</h3>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <footer id="footer" class="section-p1">
            <div class="col">
            <img class="logo" src="Images/MobileShopLogo.png" height="50px" width="120px">
            <h4>Contact</h4>
            <p><strong>Address: </strong>Gokhale Nagar, Near S.B.Road, Pune</p>
            <p><strong>Phone: </strong>+91 9503661263</p>
            <p><Strong>Hours: </Strong>10:00 - 06:00, Mon - Sat</p>
               
            <div class="follow">
                    <h4>Follow Us</h4>
                    <div class="icon">
                        <i class="fab fa-facebook"></i>
                        <i class="fab fa-twitter"></i>
                        <i class="fab fa-instagram"></i>
                        <i class="fab fa-youtube"></i>
                    </div>
                </div>
            </div>
            <div class="col">
                <h4>About</h4>
                <a href="index.jsp">About Us</a>
                <a href="ProductDataServlet">Products</a>
                <a href="index.jsp">Service</a>

            </div>

            <div class="col">
                <h4>My Account</h4>
                <a href="AdminLogin.jsp">Admin Login</a>
                <!-- <a href="#">View Cart</a> -->
            </div>


            <div class="copyright">
                <p>© 2023.Shreyas Tamboli</p>
            </div>
        </footer>
</body>
</html>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@page import="com.demo.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.demo.bean.ProductBean"%>
<%@page import="java.util.List"%>
    <%
  HttpSession session2 = request.getSession();
    String email = (String) session2.getAttribute("email");
  
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <link rel="stylesheet" href="css/ProductList.css"/> 
</head>
<body>
<section id="header">
        <a href="#"><img src="Images/MobileShopLogo.png" class="logo" height="40px" width="140px"></a>
        <div>
            <ul id="navbar">    
                <li><a class="active" href="ProductDataServlet">Products</a></li>
                <li><a  href="#brands">Brands</a></li> 
              
                <li id="lg-user" class="drop-down"><a href="DisplayUserServlet"><i class="far fa-user"></i>
                <%-- <%=request.getAttribute("email") %> --%><%= email %>
                </a>
    	<li><a  href="LogoutServlet">Logout</a></li> 
                </li>
            </ul>
        </div>
   <!--  <div id="mobile">
    
        <a href="#"><i class="far far fa-user"></i></a>
        <i id="bar" class="fas fa-outdent"></i>
    </div> -->
    </section>  

     <section id="homeImg">
       <img src="Images/saleshop4.avif" height="600px" width="100%"> 
    </section>
<section id="brands">
<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">


  <!-- Slides -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="Images/b1.png" alt="Image 1">
      <img src="Images/b2.jpg" alt="Image 2">
      <img src="Images/b3.jpg" alt="Image 3">
      <img src="Images/b4.jpg" alt="Image 4">
       <img src="Images/b5.jpg" alt="Image 5">
      <img src="Images/b6.jpg" alt="Image 6">
        <img src="Images/b7.jpg" alt="Image 7">
  </div>
  <div class="carousel-item">
      <img src="Images/b8.png" alt="Image 8">
      <img src="Images/b9.png" alt="Image 9">
       <img src="Images/b10.png" alt="Image 10">
      <img src="Images/b11.png" alt="Image 11">
      <img src="Images/b12.png" alt="Image 11">
      <img src="Images/b13.jpg" alt="Image 11">
      <img src="Images/b14.png" alt="Image 11">
    </div>
  </div>

</div>
</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

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
                <a href="ProductDataServlet">Products</a>
                <a href="UserHome.jsp">Brands</a>

            </div>

            <div class="col">
                <h4>My Account</h4>
                <a href="LogoutServlet">LogOut</a>
            </div>


            <div class="copyright">
                <p>© 2023.Shreyas Tamboli</p>
            </div>
        </footer>
</body>
</html> 
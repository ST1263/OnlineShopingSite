<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%
  HttpSession session2 = request.getSession();
    String email = (String) session2.getAttribute("email");
  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Confirm Page</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <link rel="stylesheet" href="css/UserHome.css"/> 
        <style>
        /* Add custom styles here */
       
</style>
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
    <!-- <div id="mobile">
   
        <a href="#"><i class="far far fa-user"></i></a>
        <i id="bar" class="fas fa-outdent"></i>
    </div> -->
    </section>
<div class="container">
<div class="mt-5">
    <h3>Purchase Confirmation</h3>
    <h4>Thank you for your purchase!</h4>
    </div>
    <table class="table">
        <thead>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>${param.productName}</td>
                <td>${param.quantity}</td>
                <td>${param.productPrice}</td>
                <td>${param.productPrice * param.quantity}</td>
            </tr>
        </tbody>
    </table>

    <h3>Total Amount: $${param.productPrice * param.quantity}</h3>
</div>

    <!-- Include Bootstrap JS and optionally any other scripts you need -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
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
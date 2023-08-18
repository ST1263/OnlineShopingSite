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
<title>Cart Page</title>
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
<div class="container mt-5">
    <h3>Shopping Cart</h3>

    <table class="table">
        <thead>
            <tr>
                <th>Product</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
         
            <tr>
                <td>${param.productName}</td>
                <td>${param.productPrice}</td>
                
                <td>
                    <div class="input-group input-group-sm">
                        <input type="number" class="form-control" id="quantityInput" onchange="updateTotal()">
                    </div>
                </td>
                
                <td>
                    <form action="RemoveFromCartServlet" method="post">
                        <input type="hidden" name="productId" value="${item.id}">
                        <button type="button" class="btn btn-danger" onclick="removeProduct(this)">Remove</button>
                    </form>
                </td>
            </tr>
        </tbody>
    </table>

    <div class="text-end">
        <h4>Total: <span id="finalTotal" class="total-price">$${cart.totalPrice}</span></h4>
         <a href="orderConfirmation.jsp?productName=${param.productName}&productPrice=${param.productPrice}" id="buyNowLink">
            <button class="btn btn-warning">Buy Now</button>
        </a>
       
    </div>
</div>

<!-- Include Bootstrap JS and optionally any other scripts you need -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    // JavaScript function to update the total price based on the selected quantity
   function updateTotal() {
    const productPrice = parseFloat("${param.productPrice}");
    const quantity = parseInt(document.getElementById("quantityInput").value);
    const total = productPrice * quantity;

    // Update the total price display
    document.getElementById("finalTotal").innerText = "$" + total.toFixed(2);
    
    // Update the Buy Now link's href attribute with the updated quantity
    const buyNowLink = document.getElementById('buyNowLink');
    buyNowLink.href = buyNowLink.href + '&quantity=' + quantity;
}

    // JavaScript function to remove a product from the cart
    function removeProduct(button) {
        const productName = "${param.productName}";

        // Remove the entire row from the cart
        const row = button.closest("tr");
        row.remove();

        // Check if the cart is empty
        const cartTable = document.querySelector(".table tbody");
        if (cartTable.children.length === 0) {
            // Display an alert and redirect to the product list page
            alert("Your cart is empty. Please go back to the product list.");
            window.location.href = "ProductDataServlet";
        }
    }
</script>
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

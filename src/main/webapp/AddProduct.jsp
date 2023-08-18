<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <link rel="stylesheet" href="css/AddProduct.css"/> 
</head>
<body>
<div class="main-wrapper">
        <section id="header">
        <a href="#"><img src="Images/MobileShopLogo.png" class="logo" height="40px" width="140px"></a>
        <div>
            <ul id="navbar">    
            <li><a class="active" href="#">Home</a></li>
                <li><a class="" href="#product">Add Product</a></li>
               
                <li id="lg-user" class="drop-down"><a href="#"><i class="far fa-user"></i></a>
                <ul>
                   <li><a href="LogoutServlet">LogOut</a></li>
                </ul>
                </li>
            </ul>
        </div>
    <!-- <div id="mobile">
        <a href="#"><i class="far fa-shopping-bag"></i></a>
        <a href="#"><i class="far far fa-user"></i></a>
        <i id="bar" class="fas fa-outdent"></i>
    </div> -->
    </section> 
    <div class="wrapper rounded bg-white">

        <div class="h3">Add Produts</div>
<form action="AddProductServlet" method="post" enctype="multipart/form-data">
        <div class="form">
            <div class="row">
                <div class="col-md-6 mt-md-0 mt-3">
                    <label>Product Name</span></label>
                    <input type="text" name="pname" class="form-control" required>
                </div>
                 <div class="col-md-6 mt-md-0 mt-3">
                    <label>Product Price</label>
                    <input type="text" name="pprice" class="form-control" required>
                </div>
                <!-- <div class="col-md-6 mt-md-0 mt-3">
                    <label>Last Name</label>
                    <input type="text" class="form-control" required>
                </div> -->
            </div>
            <div class="row">
                <div class="col-md-6 mt-md-0 mt-3">
                    <label>Product Color</span></label>
                    <input type="text" name="pcolor" class="form-control" required>
                </div>
                 <div class="col-md-6 mt-md-0 mt-3">
                    <label>Ram</label>
                    <input type="text" name="pram" class="form-control" required>
                </div>
               
            </div>
            <div class="row">
                <div class="col-md-6 mt-md-0 mt-3">
                    <label>Storage</label>
                    <input type="text" name="pstorage" class="form-control" required>
                </div>
               <div class="col-md-6 mt-md-0 mt-3">
                    <label>Product Image</label>
                    <input type="file" name="imageFile" class="form-control" required>
                </div>
            </div>
            <div>
             <button type="submit" name="login" class="btn btn-primary mt-3">Add Product Information</button>
             </div>
             </div>
             </form>
        </div>

    </div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script> 
</body>
</html>
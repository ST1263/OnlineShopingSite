<%@page import="com.demo.bean.UserProfileBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit User Info Page </title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <link rel="stylesheet" href="css/UpdateUserInfo.css"/> 
</head>
<body>
<%UserProfileBean p1 = (UserProfileBean)request.getAttribute("user"); %>
<section id="header">
        <a href="#"><img src="Images/MobileShopLogo.png" class="logo" height="40px" width="140px"></a>
        <div>
            <ul id="navbar">    
                <li><a class="active" href="DisplayUserServlet">Profile</a></li>
                     <!--  <li><a class="" href="DisplayAddress">Address</a></li> -->
                
                <li id="lg-user" class="drop-down"><a href="#"><i class="far fa-user"></i></a>
                <ul>
                   <li><a href="index.jsp">LogOut</a></li>
                </ul>
                </li>
            </ul>
        </div>
   <!--  <div id="mobile">
        <a href="#"><i class="far fa-shopping-bag"></i></a>
        <a href="#"><i class="far far fa-user"></i></a>
        <i id="bar" class="fas fa-outdent"></i>
    </div> -->
    </section>  
<div class="wrapper rounded bg-white">

        <div class="h3">Edit User Information</div>
<form action="EditUserInfoData" method="get">
        <div class="form">
            <div class="row">
            <div class="col-md-6 mt-md-0 mt-3">
                    <label>User Id</label>
                    <input type="text" name="uid" class="form-control" value=<%=p1.getUserId()%> required >
                </div>
                <div class="col-md-6 mt-md-0 mt-3">
                    <label>Name</label>
                    <input type="text" name="name" class="form-control" value=<%=p1.getName()%> required >
                </div>
                 <div class="col-md-6 mt-md-0 mt-3">
                    <label>Phone Number</label>
                    <input type="text" name="mobile" class="form-control" value=<%=p1.getMobile()%> required >
                </div>
            <div class="col-md-6 mt-md-0 mt-3">
                    <label>Birthday</label>
                    <input type="date" name="birthdate" class="form-control" value=<%=p1.getBirthdate()%>  required>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mt-md-0 mt-3">
                    <label>Email</label>
                    <input type="email" name="emailid" class="form-control" value=<%=p1.getEmailid()%>  required>
                </div>
               
            </div>
            <div class="row">
            <%-- <div class="col-md-6 mt-md-0 mt-3">
                    <label>Address Id</label>
                    <input type="text" name="aid" class="form-control" value="<%=p1.getAddressId() %>" required>
                </div> --%>
                <div class="col-md-6 mt-md-0 mt-3">
                    <label>Address</label>
                    <input type="text" name="address" class="form-control" value="<%=p1.getAddress() %>" required>
                </div>
                 <div class="col-md-6 mt-md-0 mt-3">
                    <label>City</label>
                    <input type="text" name="city" class="form-control" value=<%=p1.getCity()%> required>
                </div>      
                <div class="col-md-6 mt-md-0 mt-3">
                    <label>State</label>
                    <input type="text" name="state" class="form-control" value=<%=p1.getState()%> required>
                </div>
            </div>
            <div class="row">
                
               <div class="col-md-6 mt-md-0 mt-3">
                    <label>District</label>
                    <input type="text" name="district" class="form-control" value=<%=p1.getDistrict()%> required>
                </div>
                <div class="col-md-6 mt-md-0 mt-3">
                    <label>Taluka</label>
                    <input type="text" name="taluka" class="form-control" value=<%=p1.getTaluka()%> required>
                </div>
            </div>
            <div class="row">
                
                <div class="col-md-6 mt-md-0 mt-3">
                    <label>Pincode</label>
                    <input type="text" name="pincode" class="form-control" value=<%=p1.getPincode()%> required>
                </div>
               
            </div>
            <div>
             <button type="submit" name="login" class="btn btn-primary mt-3">Update Information</button>
             </div>
              </form>
        </div>
  
 
 
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>
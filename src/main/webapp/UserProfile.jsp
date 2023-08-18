 <%@ page import="javax.servlet.http.HttpSession" %>
 <%@page import="com.demo.bean.UserProfileBean"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.demo.bean.UserProfileBean" %>
    <%@page import="java.util.List"%>
   <%
  HttpSession session2 = request.getSession();
    String email = (String) session2.getAttribute("email");
   %>
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Profile Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <link rel="stylesheet" href="css/UserProfile.css"/> 
</head>
<body>
<div class="main-wrapper">
        <section id="header">
        <a href="#"><img src="Images/MobileShopLogo.png" class="logo" height="40px" width="140px"></a>
        <div>
            <ul id="navbar">    
                <li><a class="active" href="DisplayUserServlet">Profile</a></li>
                <!-- <li><a class="" href="DisplayAddress">Address</a></li> -->
                <!-- <li id="lg-bag"><a href="#"><i class="far fa-shopping-bag"></i></a></li> -->
                <li id="lg-user" class="drop-down"><a href="#"><i class="far fa-user"></i>
                <%-- <%= email %> --%></a>
                
                <ul>
                   <li><a href="LogoutServlet">LogOut</a></li>
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
        
         <%List<UserProfileBean> L = (List<UserProfileBean>)request.getAttribute("lpd");
                for(UserProfileBean pd:L){
                	%>
        <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-sm-7 col-6">
                        <h4 class="page-title">My Profile</h4>
                    </div>

                    <div class="col-sm-5 col-6 text-right m-b-30">
                        <a href="EditUserServlet?userId=<%=pd.getUserId() %>" class="btn btn-primary btn-rounded"><i class="fa fa-plus"></i> Edit Profile</a>
                    </div>
                </div>
                <br>
                <br>
               
                <div class="card-box profile-header">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="profile-view">
                               
                                <div class="profile-basic">
                                    <div class="row">
                                       
                                        <div class="col-md-7">
                                            <ul class="personal-info">
                                            <li>
                                            	
                                                    <span class="title">User Id:</span>
                                                    <span class="text">-  <%=pd.getUserId() %></span>
                                                    
                                                </li>
                                            	<li>
                                            	
                                                    <span class="title">Name:</span>
                                                    <span class="text">-  <%=pd.getName() %></span>
                                                    
                                                </li>

                                                <li>
                                                    <span class="title">Phone:</span>
                                                    <span class="text">-  <%=pd.getMobile() %></span>
                                                    
                                                </li>
                                       
                                                <li>
                                                    <span class="title">Email:</span>
                                                    <span class="text">-  <%=pd.getEmailid() %></span>
                                                   
                                                </li>
                                                <li>
                                                    <span class="title">Birthday:</span>
                                                    <span class="text">-  <%=pd.getBirthdate() %></span>
                                                   
                                                </li>
                                      <%--  	<li>
                                            	
                                                    <span class="title">Address Id:</span>
                                                    <span class="text">-  <%=pd.getAddressId() %></span>
                                                    
                                                </li> --%>
                                            	<li>
                                            	
                                                    <span class="title">Address:</span>
                                                    <span class="text">-  <%=pd.getAddress() %></span>
                                                    
                                                </li>

                                                <li>
                                                    <span class="title">City:</span>
                                                    <span class="text">-  <%=pd.getCity() %></span>
                                                    
                                                </li>
                                       
                                                <li>
                                                    <span class="title">State:</span>
                                                    <span class="text">-  <%=pd.getState() %></span>
                                                   
                                                </li>
                                                <li>
                                                    <span class="title">District:</span>
                                                    <span class="text">-  <%=pd.getDistrict() %></span>
                                                   
                                                </li>
                                       
                                       			<li>
                                                    <span class="title">Taluka:</span>
                                                    <span class="text">-  <%=pd.getTaluka() %></span>
                                                   
                                                </li>
                                                <li>
                                                    <span class="title">PinCode:</span>
                                                    <span class="text">-  <%=pd.getPincode() %></span>
                                                   
                                                </li>
                                                <%-- <li>
                                                    <span class="title">Gender:</span>
                                                    <span class="text">-  <%=pd.getGender() %></span>
                                                    
                                                </li> --%>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>                        
                        </div>
                    </div>
                </div>

                <%
}
%>
				

</div>
</div>






    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</body>
</html>
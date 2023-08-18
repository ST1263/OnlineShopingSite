<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="css/Register.css">
<script>
function checkPassword() {
    var password = document.getElementById('password').value;
    var cpassword = document.getElementById('cpassword').value;
    var errorMessage = "Passwords do not match!";

    if (password !== cpassword) {
        if (!document.getElementById('errorSpan')) {
            var span = document.createElement("span");
            span.id = "errorSpan";
            span.style.color = "red";
            span.innerHTML = errorMessage;
            document.getElementById('cpassword').after(span);
        }
        return false;
    } else {
        var span = document.getElementById('errorSpan');
        if (span) {
            span.remove();
        }
        return true;
    }
}

function validateName() {
    var name = document.getElementById("name").value
    var errorMessage = "only characters and spaces are allowed";
    var nameRegex = /^[A-Za-z\s]+$/;
   // var nameErrorSpan = document.getElementById("nameError");
    if (!nameRegex.test(name)) {
    	if (!document.getElementById('errorSpan')) {
            var span = document.createElement("span");
            span.id = "errorSpan";
            span.style.color = "red";
            span.innerHTML = errorMessage;
            document.getElementById('name').after(span);
        }
        return false;
        //nameErrorSpan.textContent = "Please enter a valid name (only characters and spaces are allowed).";
    } else {
        var span = document.getElementById('errorSpan');
        if (span) {
            span.remove();
        }
        return true;
    }
    
    
    //else {
        //nameErrorSpan.textContent = "";
   // }
}

function validateEmail() {
    var email = document.getElementById("email").value;
    var errorMessage = "Please enter a valid email address";
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
   // var emailErrorSpan = document.getElementById("emailError");
    if (!emailRegex.test(email)) {
    	if (!document.getElementById('errorSpan')) {
            var span = document.createElement("span");
            span.id = "errorSpan";
            span.style.color = "red";
            span.innerHTML = errorMessage;
            document.getElementById('email').after(span);
        }
        return false;
       // emailErrorSpan.textContent = "Please enter a valid email address.";
    } else {
        var span = document.getElementById('errorSpan');
        if (span) {
            span.remove();
        }
        return true;
    }
    
    
    //else {
        //emailErrorSpan.textContent = "";
    //}
}

function validateMobile() {
    var mobile = document.getElementById("mobile").value;
    var errorMessage = "Please enter a valid 10-digit mobile number";
    var mobileRegex = /^\d{10}$/;
  //  var mobileErrorSpan = document.getElementById("mobileError");
    if (!mobileRegex.test(mobile)) {
    	if (!document.getElementById('errorSpan')) {
            var span = document.createElement("span");
            span.id = "errorSpan";
            span.style.color = "red";
            span.innerHTML = errorMessage;
            document.getElementById('mobile').after(span);
        }
        return false;
        //mobileErrorSpan.textContent = "Please enter a valid 10-digit mobile number.";
    }
    else {
        var span = document.getElementById('errorSpan');
        if (span) {
            span.remove();
        }
        return true;
    }
    // else {
       // mobileErrorSpan.textContent = "";
    //}
}

    </script>
</head>
<body>
<div class="main-wrapper account-wrapper">
        <div class="account-page">
			<div class="account-center">
				<div class="account-box">
                    <form action="RegisterServlet" class="form-signin" method="post">
						<div class="account-logo">
                            <img src="Images/login.png" alt="">
                        </div>
                         <div class="form-group">
                            <label>Name <span class="text-danger">*</span></label>
                            <input id="name" name="name" type="text" placeholder="Enter Name" class="form-control" onblur="validateName()" autofocus required>
                        </div>
                        <div class="form-group">
                            <label>Email ID <span class="text-danger">*</span></label>
                            <input id="email" name="emailid" type="email" placeholder="Enter Email Id" class="form-control" onblur="validateEmail()" autofocus required>
                        </div>
                        <div class="form-group">
                            <label>Password <span class="text-danger">*</span></label>
                            <input id="password" name="password" type="password" placeholder="Enter Password" class="form-control" autofocus required>
                        </div>
                        <div class="form-group"> 
                            <label>Confirm Password <span class="text-danger">*</span></label>
                            <input id="cpassword" name="cpassword" type="password" placeholder="Enter Confirm Password" class="form-control" onblur="checkPassword();" autofocus required>
                            <!--  <span id="message" style="color: red;"></span><br> -->
                        </div>
                        <div class="form-group">
                            <label>Mobile No <span class="text-danger">*</span></label>
                            <input id="mobile" name="mobile" type="text" placeholder="Enter Mobile No" class="form-control" onblur="validateMobile()" autofocus required>
                        </div>
                        <div class="form-group">
                            <label>Birth Date <span class="text-danger">*</span></label>
                            <input name="birthdate" type="date" class="form-control" autofocus required>
                        </div>
                        
                        
                        <div class="form-group text-center mt-2">
                            <button type="submit" name="Register" class="btn btn-primary account-btn">Register</button>
                        </div>
                        <div class="text-center register-link">
                            Already have an account? <a href="Login.jsp">Login Now</a>
                        </div>
                    </form>
                </div>
			</div>
        </div>
    </div>
</body>
</html>
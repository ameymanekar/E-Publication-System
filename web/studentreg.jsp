<%-- 
    Document   : form
    Created on : Mar 12, 2018, 10:07:03 PM
    Author     : Asus
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Meta tags -->
	<title>Registration Page</title>
	<meta name="keywords" content="General Application Form Responsive widget, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- stylesheets -->
	<link rel="stylesheet" href="style.css" type="text/css" media="all">
	
	<!-- google fonts  -->
	<link href="//fonts.googleapis.com/css?family=Alegreya+Sans:100,100i,300,300i,400,400i,500,500i,700,700i,800,800i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<style>
    .w3ls-banner {
    background: url(bg.jpg) no-repeat;
	background-size: cover;
    min-height: 100vh;
    color: white;
	background-position:center;
	padding-top: 30px;	
}
    </style>
</head>
<body>
	<div class="w3ls-banner">
	<div class="heading">
		<h1>Student Registration</h1>
	</div>
		<div class="container">
			<div class="agile-form">
				<form action="stuadd.jsp" onsubmit="return myFunction()">
					<ul class="field-list">
						<li class="name">
							<label class="form-label"> Name <span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="text" pattern="[A-Z a-z]+" name="name" placeholder="Full Name" required>
								
							</div>
						</li>
						<li> 
							<label class="form-label"> E-Mail Address <span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="email" name="email"  placeholder="Mail@example.com" required>
							
							</div>
						</li>
						<li> 
							<label class="form-label"> Phone Number <span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="text" name="contactno"  pattern="[1,2,3,4,5,6,7,8,9,0]{10}" title="Input Numbers upto 10 Digits" placeholder="Phone Number" maxlength="10" required >
							</div>
						</li>
                                               
						<li>
							<label class="form-label"> Gender <span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="gender" required>
									<option value="">Gender</option>
									<option value="Male"> Male </option>
									<option value="Female"> Female </option>
									
								</select>
							</div>
						</li>
						
                                                
						<li>
							<label class="form-label"> Date of Birth <span class="form-required"> * </span></label>
							<div class="form-input">
								
                                                            <input type="date" placeholder="" max="2000-01-01" name="DOB" style="width: 98%; height: 30px;"  required> 
								<%           DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
	LocalDate localDate = LocalDate.now();
	System.out.println(dtf.format(localDate)); //2016/11/16 %>
                                            <input type="hidden" placeholder="Email" value="<%=dtf.format(localDate)%>" name="DOB2" required>
         
							</div>
						</li>
                                                
                                              <li>
							<label class="form-label">password<span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="password" placeholder="password" id="password" style="width: 98%; height: 30px;" name="pass"  required>
									
							</div>
						</li>
                                                
                                                  <li>
							<label class="form-label"> RE password <span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="password" placeholder="re password" id="confirm_password" style="width: 98%; height: 30px;" name="rpass" required>  
								
							</div>
						</li>
                                                
						
					</ul>
					<div class="submit_btn">
						<input type="submit" value="Submit">
                                               </div>
                                   <script>
                var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
                </script> 
				</form>	
			</div>
		</div>
		
		
	</
</body>
</html>
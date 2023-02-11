<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form by Colorlib</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
     
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>"> 
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" required="required" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" required="required" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" required="required" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass" required="required"
									placeholder="Repeat your password" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="tel" name="contact" id="contact" pattern="[0-9]{3}[0-9]{3}[0-9]{4}"
									placeholder="Contact no" required="required" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" required="required" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist//sweetalert.min.js"></script>
	
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
    <script type="text/javascript">
    
    var status=document.getElementById("status").value;
    if(status=="success"){
    	swal("Congrats","Account Created Successfully","success");
    }
    if(status=="failed"){
    	swal("This email id is already registered","error");
    }
    
    if(status=="invalidName"){
    	swal("Please enter the Name","error");
    }
    if(status=="invalidEmail"){
    	swal("Please enter the Email","error");
    }
    if(status=="invalidUpwd"){
    	swal("Please enter the Password","error");
    }
    if(status=="invalidConfirmPassword"){
    	swal("Password don't match","error");
    }
    if(status=="invalidMobile"){
    	swal("Please enter the Contact","error");
    }
    
    
    
  //else if(status="invalidMobileLength"){
	//swal("Please enter the Valid Contact","error");
// }
    </script>
    
    
    
    


</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
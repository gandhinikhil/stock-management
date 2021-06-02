<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/universal_style.css">
	<title>Sign Up</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand text-center" href="index.jsp" style="margin: 0 auto;"><i class="fab fa-opencart"></i> Stock Management</a>
		</div>
	</nav>
	
	<nav class="navbar navbar-light" style="background-color:#007bff; color:#ffffff;">
		<div class="container">
			<h2><i class="fas fa-user-plus"></i> Registration</h2>
		</div>
	</nav>
	
	<div class="container" style="max-width: 800px; box-shadow: 5px 10px 18px #888888;">
		<form class="form-horizontal" action="UserController" method="post">
			
			<input type="hidden" name="command" value="ADD" />
			
			<div class="form-group"> 
				<label for="inputUserid" class="control-label"></label>
    			<div class="col-sm-10">
	       			<% 
	             		String str=(String)request.getAttribute("msg");
	            
	              		if(str != null){
	            	%> 
	            	  <h4 style="color: red;">  <%= str %></h4>
	            	<%
	              	}
	              	%>
    			</div>
				
            </div>
            
            
  			<div class="form-group">
    			<label for="inputUserid">User ID</label>
    			<input type="text" name="userId" class="form-control" id="inputUserid" placeholder="User ID or Email" required="required">
  			</div>
  
  			<div class="form-group">
    			<label for="inputPassword">Password</label>
    			<input type="password" name="password" class="form-control" id="inputPassword" placeholder="Password" required="required" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
  			</div>
  
  			<div class="form-group">
    			<label for="inputFirstName">First Name</label>
    			<input type="text" name="firstName" class="form-control" id="inputFirstName" placeholder="First Name" required="required" pattern="[A-Za-z]{3,}" title="Must contain at least 3 or more characters">
  			</div>
  
  			<div class="form-group">
    			<label for="inputLastName">Last Name</label>
    			<input type="text" name="lastName" class="form-control" id="inputLastName" placeholder="Last Name" required="required" pattern="[A-Za-z]{3,}" title="Must contain at least 3 or more characters">
  			</div>
  
  			<div class="form-group">
    			<label for="inputAddress">Address</label>
    			<textarea class="form-control" name="address" rows="5" id="inputAddress" required="required"></textarea>
  			</div>
  
  			<div class="form-group">
    			<label for="inputCity">City</label>
    			<input type="text" name="city" class="form-control" id="inputCity" placeholder="City" required="required">
  			</div>
  
			<div class="form-group">
				<button type="submit" class="btn btn-success btn-block">Sign Up</button>
			</div>
		</form>
		
		<div style="text-align: center; padding: 10px;">				
			<p>or</p>
			<a href="login.jsp">Login here</a>
		</div>
		
		<br>
		
	</div>
	
	<br><br>
	
	<footer class="page-footer font-small navbar-dark bg-dark" style="color:#ffffff; left: 0; bottom: 0; width: 100%;">
		<div class="footer-copyright text-center py-3">© 2019 Copyright</div>
	</footer>
	
</body>
</html>
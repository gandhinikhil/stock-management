<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	<link rel="stylesheet" href="css/universal_style.css">
	<title>Login Form</title>
</head>
<body>

	<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand text-center" href="index.jsp" style="margin: 0 auto;"><i class="fab fa-opencart"></i> Stock Management</a>
		</div>
	</nav>
	
	<nav class="navbar navbar-light" style="background-color:#007bff; color:#ffffff;">
		<div class="container">
			<h2><i class="fas fa-sign-in-alt"></i> LogIn</h2>
		</div>
	</nav>
		
	<div class="container">
	
		<div class="card bg-light mb-3" style="max-width: 30rem; margin: 30px auto; float: none;">
			<div class="card-header"><h3>LogIn</h3></div>
			<div class="card-body" style="background-color: #ffffff;">
				<form class="loginform" action="UserController" method="post">
					<input type="hidden" name="command" value="USER" />
					<div class="form-group"> 
					<% 
	             		String str=(String)request.getAttribute("msg");
	            	%><%
	            	if(str!=null){
	            	%> 
	            		<h4 style="color: green; text-align: center;"> <%=str%></h4>
	            	<%
	            	}
	            	%>
					</div>
					<div class="form-group">
						<label for="inputID">User ID</label> 
						<input type="text" name="userId" class="form-control" id="inputID" placeholder="User ID" required="required">
					</div>
					
					<div class="form-group">
						<label for="inputPassword">Password</label> 
						<input type="password" name="password" class="form-control" id="inputPassword" placeholder="Password" required="required">
					</div>

					<button type="submit" class="btn btn-success btn-block">Login</button>
				</form>

				<div style="text-align: center; padding: 10px;">				
  					<p>or</p>
  					<a href="registration.jsp">Register here</a>
				</div>

			</div>
		</div>
	</div>
	<footer class="page-footer font-small navbar-dark bg-dark" style="color:#ffffff; position: fixed; left: 0; bottom: 0; width: 100%;">
		<div class="footer-copyright text-center py-3">© 2019 Copyright</div>
	</footer>
</body>
</html>
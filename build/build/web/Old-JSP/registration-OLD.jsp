<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.jsp"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Stock Management</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-nav-demo">
      <ul class="nav navbar-nav">
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
         </ul>
        <ul class="nav navbar-nav navbar-right">
        <li><a href="registration.jsp">Sign Up</a></li>
        <li><a href="login.jsp">Login</a></li>
      </ul>
     </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

	<div class="container-fluid">
	<div class="jumbotron">
<h1> <span class="glyphicon glyphicon-star" aria-hidden="true"></span> Item Stock Management</h1>
<p> </p>
</div>
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
			<div class="col-md-4 col-sm-4 col-xs-12">
			
			
				<!-- form start -->
			
			
				<form class="form-horizontal" action="UserController" method="post">
				<input type="hidden" name="command" value="ADD" />
				<div class="form-group"> 
				<label for="inputUserid" class="col-sm-2 control-label"></label>
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
    <label for="inputUserid" class="col-sm-2 control-label">User_ID</label>
    <div class="col-sm-10">
      <input type="text" name="userId" class="form-control" id="inputUserid" placeholder="User ID or Email" required="required">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Password" required="required" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
    </div>
  </div>
  <div class="form-group">
    <label for="inputFirstName" class="col-sm-2 control-label">First_Name</label>
    <div class="col-sm-10">
      <input type="text" name="firstName" class="form-control" id="inputFirstName" placeholder="First Name" required="required" pattern="[A-Za-z]{3,}" title="Must contain at least 3 or more characters">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputLastName" class="col-sm-2 control-label">Last_Name</label>
    <div class="col-sm-10">
      <input type="text" name="lastName" class="form-control" id="inputLastName" placeholder="Last Name" required="required" pattern="[A-Za-z]{3,}" title="Must contain at least 3 or more characters">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputAddress" class="col-sm-2 control-label">Address</label>
    <div class="col-sm-10">
    
     <textarea class="form-control" name="address" rows="5" id="inputAddress" required="required"></textarea>
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputCity" class="col-sm-2 control-label">City</label>
    <div class="col-sm-10">
      <input type="text" name="city" class="form-control" id="inputCity" placeholder="City" required="required">
    </div>
  </div>
  
  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-success btn-block">Sign Up</button>
    </div>
  </div>
</form>
				<!-- form end -->
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12"></div>

		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
	
	<script type="text/javascript"
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="js/custom.js"></script>
</body>
</html>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
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
<p>A pharmaceutical company distributes their pharmaceutical and healthcare products, supplies and prescription drugs to a lot of distribution centers.</p>
</div>
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
			<div class="col-md-4 col-sm-4 col-xs-12">
			
				<!-- form start -->
				
				<form class="loginform" action="UserController" method="post">
				<input type="hidden" name="command" value="USER" />
				<div class="form-group"> 
				 <% 
              String str=(String)request.getAttribute("msg");
            %><%
              if(str!=null){
            	%> 
            	  <h4 style="color: green;">  <%=str%></h4>
            	  <%
              }
              %>
				</div>
					<div class="form-group">
						<label for="exampleInputEmail1">User ID</label> <input
							type="text" name="userId" class="form-control" id="exampleInputEmail1"
							placeholder="User Name or Email" required="required">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" name="password" class="form-control" id="exampleInputPassword1"
							placeholder="Password" required="required">
					</div>
					
					
					<button type="submit" class="btn btn-success btn-block">Submit</button>
				</form>

				<!-- form end -->
				
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12"></div>

		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
	<script type="text/javascript"
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
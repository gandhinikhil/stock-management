<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<link rel="stylesheet" href="css/universal_style.css">
	<title>Item List</title>
</head>
<body>

	<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="ItemController"><i class="fab fa-opencart"></i> Stock Management</a>
			
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link disabled" href="#" style="color: #F1F1F1; margin-right: 20px;"><i class="fas fa-user"></i> Hello, ${user.userId}</a>
				</li>
				<li class="nav-item">
					<c:url var="logoutLink" value="UserController">
						<c:param name="command" value="LOGOUT"/>
					</c:url>
					<a class="nav-link" href="${logoutLink}" style="color: #F1F1F1;"><i class="fas fa-sign-out-alt"></i> Logout</a>
				</li>
			</ul>
		</div>
	</nav>
	
	<nav class="navbar navbar-light" style="background-color:#ffc107;">
		<div class="container">
			<h2>List of Items</h2>
		</div>
	</nav>
	
	<div class="container" style="text-align:center; padding-top: 10px;">
	
		<div class="row">
			<div class="col-sm-6">
				<form action="ItemController" method="get" class="form-horizontal" style="padding: 10px 0 10px 0;">
					<div class="input-group">
						<input type="hidden" class="form-control" name="COMMAND" value="SEARCH"/>			    
						<input type="text" class="form-control" placeholder="Search" name="theSearchName">
						<div class="input-group-append">
							<c:url var="searchLink" value="ItemController">
								<c:param name="COMMAND" value="SEARCH"/>
							</c:url>
							<button type="submit" class="btn btn-success" value="Search"><a href="${searchLink}" style="color: #ffffff; text-decoration: none;">Go</a></button> 
						</div>
					</div>
				</form>	
			</div>
			
			<div class="col-sm-6" style="padding: 10px 15px 10px 15px;">
				<c:url var="checkLink" value="ItemController">
					<c:param name="COMMAND" value="CHECK"/>
				</c:url>
				<a href="${checkLink}" class="btn btn-success btn-block">Add Item</a>
			</div>
		</div>  
	  	
	    <br>
		
		<div class="table-responsive">
			<table class="table table-striped table-hover">
				<thead style="background-color: #007bff; color:#ffffff">
					<tr>
						<th>Item Name</th>
						<th>Unit</th>
						<th>Beginning Inventory</th>
                                                <th>Quantity Left</th>
						<th>Price Per Unit</th>
						<th>Item Category</th>
						<th></th>
					</tr>
				</thead>
				
				<tbody>
				
					<c:forEach var="tempItem" items="${ ITEM_LIST }">
						<c:url var="updateLink" value="ItemController">
							<c:param name="COMMAND" value="LOAD"/>
							<c:param name="itemCode" value="${tempItem.itemCode}"/>
						</c:url>
						<c:url var="deleteLink" value="ItemController">
							<c:param name="COMMAND" value="DELETE"/>
							<c:param name="itemCode" value="${tempItem.itemCode}"/>
						</c:url>
						<tr>
							<td> ${tempItem.itemName} </td>
							<td> ${tempItem.unit} </td>
							<td> ${tempItem.beginningInventory} </td>
                                                        <td> ${tempItem.quantityOnHand} </td>
							<td> ${tempItem.pricePerUnit} </td>
							<td> ${tempItem.itemCategory} </td>
							<td>
								<a href="${updateLink}">Update</a>
								|
								<a href="${deleteLink}">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<br><br>
	</div>
	
	<footer class="page-footer font-small navbar-dark bg-dark" style="color:#ffffff; position: fixed; left: 0; bottom: 0; width: 100%;">
		<div class="footer-copyright text-center py-3">© 2019 Copyright</div>
	</footer>
	
</body>
</html>
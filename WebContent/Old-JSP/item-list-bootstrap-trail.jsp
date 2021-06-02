<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	<link rel="stylesheet" href="css/universal_style.css">
	<title>Item List</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="#"><i class="fab fa-opencart"></i> Stock Management</a>
			
			<a class="nav-link" href="#" style="color: #F1F1F1;"><i class="fas fa-sign-out-alt"></i> Logout</a>
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
							<button type="submit" class="btn btn-success" value="Search">Go</button> 
						</div>
					</div>
				</form>	
			</div>
			
			<div class="col-sm-6">
				<form action="add-item-bootstrap.jsp" method="get" style="padding: 10px 0 10px 0;">
					<input type="submit" value="Add Item" class="btn btn-success btn-block">
				</form>	
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
                                                <th>Qunatity left</th>
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
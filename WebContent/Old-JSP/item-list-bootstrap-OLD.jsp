<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/universal_style.css">
	<title>Item List</title>
</head>
<body>
	<div class="container" style="text-align:center; padding-top: 10px;">
		<div>
			<h2>Stock Management</h2>
		</div>
		
		<br>
		
		<form action="ItemController" method="get" class="form-horizontal">
			<div class="form-row justify-content-center">
				<div style="width: 50%;" class="input-group mb-3 col-xs-2">
					<input type="hidden" class="form-control" name="COMMAND" value="SEARCH"/>			    
					<input type="text" class="form-control" placeholder="Search" name="theSearchName">
					<div class="input-group-append">
						<button type="submit" class="btn btn-success" value="Search">Go</button> 
					</div>
				</div>
			</div>
		</form>			    
	  	
	    <br>
		
		<div class="table-responsive">
			<table class="table table-striped table-hover">
				<thead class="thead-dark">
					<tr>
						<th>Item Name</th>
						<th>Unit</th>
						<th>Beginning Inventory</th>
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
	
	<div class="container">		
		<form action="add-item-bootstrap.jsp" method="get">
			<div class="row">
				<div class="col text-center">
					<input type="submit" value="Add Item" class="btn btn-outline-success btn-block">
				</div>
			</div>
		</form>
	</div>
	
</body>
</html>
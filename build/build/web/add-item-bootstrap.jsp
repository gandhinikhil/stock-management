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
	<title>Add Item</title>
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
			<h2><i class="fas fa-folder-plus"></i> Add Item</h2>
		</div>
	</nav>
	
	<div class="container" style="max-width: 800px; box-shadow: 5px 10px 18px #888888;">
		
		<br>
		
		<div>
			<form action="ItemController" method="get">
			
				<input type="hidden" name="COMMAND" value="ADD">
				
			
				<div class="form-group">
					<label for="inputName">Item Name: </label>
					<input type="text" id="inputName" name="itemName" placeholder="Item Name" class="form-control" required="required">	
				</div>
				
				<div class="form-group">
					<label for="inputUnit">Unit: </label>
					<input type="text" id="inputUnit" name="unit" placeholder="Eg 250 ml, 50 mg, 100 pcs" class="form-control" required="required">
				</div>
				
				<div class="form-group">
					<label for="inputBI">Beginning Inventory: </label>
					<input type="number" id="inputBI" name="beginningInventory" placeholder="Initial quantity" class="form-control" required="required">
				</div>
				
				<div class="form-group">
					<label for="inputQuantity">Quantity On Hand: </label>
					<input type="number" id="inputQuantity" name="quantityOnHand" placeholder="Current Total Stock" class="form-control" required="required">
				</div>
				
				<div class="form-group">
					<label for="inputPrice">Price Per Unit: </label>
					<input type="number" id="inputPrice" name="pricePerUnit" placeholder="Price in rupees" class="form-control" required="required">
				</div>
				
				<div class="form-group">
					<label for="inputDOM">Date Of Manufacture: </label>
					<input type="date" id="inputDOM" name="dateOfManufacture" placeholder="Date Of Maunufacture" class="form-control" required="required">
				</div>
				
				<div class="form-group">
					<label for="inputDOE">Date Of Expiry: </label>
					<input type="date" id="inputDOE" name="dateOfExpiry" placeholder="Date Of Expiry" class="form-control" required="required">
				</div>
				
				<div class="form-group">
					<label for="inputLocation">Location: </label>
					<select class="form-control" name="location" id="inputLocation">
						<option>Bulk Zone</option>
						<option>Pick Zone</option>
						<option>Distribution Center</option>
					</select>
				</div>
				
				<div class="form-group">
					<label for="inputItemCategory">Item Category: </label>
					<select class="form-control" name="itemCategory" id="inputItemCategory">
						<option>Pharma Drug</option>
						<option>Health and Personal Care</option>
						<option>Medical Supplies and Equipment</option>
					</select>
				</div>
				
				<div class="form-group">
					<label for="inputItemSubCategory">Item Sub-Category: </label>
					<select class="form-control" name="itemSubCategory" id="inputItemSubCategory">
						<option>Tablet</option>
							<option>Capsule</option>
							<option>Syrup</option>
							<option>Cream and Lotion</option>
							<option>Powders</option>
							<option>Hand and Foot Care</option>
							<option>Sun Care</option>
							<option>Face Pack and Cleanser</option>
							<option>Diaper and Wipe</option>
							<option>Soap</option>
							<option>Baby Powder</option>
							<option>Cereal and Formula Food Powder</option>
							<option>Medical Moniter</option>
							<option>Diagnostic</option>
							<option>Surgical Instrument</option>
					</select>
				</div>
				
				
				<div class="row">
					<div class="col text-center">
						<input type="submit" value="Add Item" class="btn btn-success btn-block">
					</div>
				</div>
					
			</form>
			
			<br><br>
			
			<div style="text-align:center; margin-bottom: 20px;">
				<c:url var="listLink" value="ItemController">
					<c:param name="COMMAND" value="LIST"/>
				</c:url>
				<button  class="btn btn-link" type="submit"><a href="${listLink}">Back to List</a></button>
			</div>
			
			<br>
		</div>
		
	</div>
	
	<footer class="page-footer font-small navbar-dark bg-dark" style="color:#ffffff; left: 0; bottom: 0; width: 100%; margin-top: 20px;">
		<div class="footer-copyright text-center py-3">© 2019 Copyright</div>
	</footer>
	
</body>
</html>
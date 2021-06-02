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
	<title>Add Items</title>
</head>
<body>
	
	<div class="container" style="padding-top: 10px">
		
		<div style="text-align:center;">
			<h2>Stock Management</h2>
		</div>
		
		<br>
		
		<div>
			<form action="ItemController" method="get">
			
				<input type="hidden" name="COMMAND" value="ADD">
				
				
				<table class="table table-striped">	
					<thead class="thead-dark">
						<tr>
							<th colspan="2" style="text-align:center;"><h4>Add Item</h4></th>
						</tr>
					</thead>			
					<tbody>
						<tr>
							<td><label>Item Name: </label></td>
							<td>
								<input type="text" name="itemName" placeholder="Item Name" class="form-control" required="required">
							</td>
						</tr>
						
						<tr>
							<td><label>Unit: </label></td>
							<td>
								<input type="text" name="unit" placeholder="Eg 250 ml, 50 mg, 100 pcs" class="form-control" required="required">
							</td>
						</tr>
						
						<tr>
							<td><label>Beginning Inventory: </label></td>
							<td>
								<input type="number" name="beginningInventory" placeholder="Initial quantity" class="form-control" required="required">
							</td>
						</tr>
						
						<tr>
							<td><label>Quantity On Hand: </label></td>
							<td>
								<input type="number" name="quantityOnHand" placeholder="Current Total Stock" class="form-control" required="required">
							</td>
						</tr>
						
						<tr>
							<td><label>Price Per Unit: </label></td>
							<td>
								<input type="number" name="pricePerUnit" placeholder="Price in rupees" class="form-control" required="required">
							</td>
						</tr>
						
						<tr>
							<td><label>Date Of Manufacture: </label></td>
							<td>
								<input type="date" name="dateOfManufacture" placeholder="Date Of Maunufacture" class="form-control" required="required">
							</td>
						</tr>
						
						<tr>
							<td><label>Date Of Expiry: </label></td>
							<td>
								<input type="date" name="dateOfExpiry" placeholder="Date Of Expiry" class="form-control" required="required">
							</td>
						</tr>
						
						<tr>
							<td><label>Location: </label></td>
							<td>
								<select class="form-control" name="location">
									<option>Bulk Zone</option>
									<option>Pick Zone</option>
									<option>Distribution Center</option>
								</select>
							</td>
						</tr>
						
						<tr>
							<td><label>Item Category: </label></td>
							<td>
								<select class="form-control" name="itemCategory">
									<option>Pharma Drug</option>
									<option>Health and Personal Care</option>
									<option>Medical Supplies and Equipment</option>
								</select>
							</td>
						</tr>
						
						<tr>
							<td><label>Item Sub-Category: </label></td>
							<td>
								<select class="form-control" name="itemSubCategory">
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
							</td>
						</tr>
					</tbody>
				</table>
				
				
				<div class="row">
					<div class="col text-center">
						<input type="submit" value="Add Item" class="btn btn-outline-success btn-block">
					</div>
				</div>
					
			</form>
			
			<br><br>
			
			<div style="text-align:center; margin-bottom: 20px;">
				<a href="ItemController">Back To List</a>
			</div>
		</div>
		
	</div>
	
</body>
</html>
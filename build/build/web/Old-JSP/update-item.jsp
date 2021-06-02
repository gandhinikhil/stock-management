<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add Items</title>
	
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/add-item-style.css">
</head>
<body>
	
	<div id="wrapper">
		<div id="content">
			<h2>Stock Management</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Update Item</h3>
		<form action="ItemController" method="get">
		<input type="hidden" name="COMMAND" value="UPDATE">
		<input type="hidden" name="itemCode" value="${ITEM.itemCode}">
			<table>				
				<tbody>
					<tr>
						<td><label>Item Name: </label></td>
						<td>
							<input type="text" name="itemName" placeholder="Item Name" value="${ITEM.itemName}">
						</td>
					</tr>
					
					<tr>
						<td><label>Unit: </label></td>
						<td>
							<input type="text" name="unit" placeholder="Eg 250 ml, 50 mg, 100 pcs" value="${ITEM.unit}">
						</td>
					</tr>
					
					<tr>
						<td><label>Beginning_Inventory: </label></td>
						<td>
							<input type="number" name="beginningInventory" placeholder="Initial quantity" value="${ITEM.beginningInventory}">
						</td>
					</tr>
					
					<tr>
						<td><label>Quantity_On_Hand: </label></td>
						<td>
							<input type="number" name="quantityOnHand" placeholder="Current Total Stock" value="${ITEM.quantityOnHand}">
						</td>
					</tr>
					
					<tr>
						<td><label>Price_Per_Unit: </label></td>
						<td>
							<input type="number" name="pricePerUnit" placeholder="Price in rupees" value="${ITEM.pricePerUnit}" >
						</td>
					</tr>
					
					<tr>
						<td><label>Date_Of_Manufacture: </label></td>
						<td>
							<input type="date" name="dateOfManufacture" placeholder="Date Of Maunufacture" value="${ITEM.dateOfManufacture}">
						</td>
					</tr>
					
					<tr>
						<td><label>Date_Of_Expiry: </label></td>
						<td>
							<input type="date" name="dateOfExpiry" placeholder="Date Of Expiry" value="${ITEM.dateOfExpiry}">
						</td>
					</tr>
					
					<tr>
						<td><label>Location: </label></td>
						<td>
							<select name="location" value="${ITEM.location}">
								<option>Bulk Zone</option>
								<option>Pick Zone</option>
								<option>Distribution Center</option>
							</select>
						</td>
					</tr>
					
					<tr>
						<td><label>Item Category: </label></td>
						<td>
							<select name="itemCategory" value="${ITEM.itemCategory}">
								<option>Pharma Drug</option>
								<option>Health and Personal Care</option>
								<option>Medical Supplies and Equipment</option>
							</select>
						</td>
					</tr>
					
					<tr>
						<td><label>Item Sub-Category: </label></td>
						<td>
							<select name="itemSubCategory" value="${ITEM.itemSubCategory}">
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
			
			<input type="submit" value="Save" class="save">
		</form>
		
		<br><br>
		
		<a href="ItemController" class="save">Back To List</a>
	</div>
	
</body>
</html>
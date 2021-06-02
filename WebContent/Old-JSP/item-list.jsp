<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Item List</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div id="wrapper">
		<div id = "header">
			<h2>Stock Management</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
			
			<form action="add-item.jsp">
				<input type="submit" value="Add Item" class="add-item-button">
			</form>
		
			<table>
				<tr>
					<th>Item Name</th>
					<th>Unit</th>
					<th>Beginning Inventory</th>
					<th>Price Per Unit</th>
				</tr>
				
				<c:forEach var="tempItem" items="${ ITEM_LIST }">
					<tr>
						<td> ${tempItem.itemName} </td>
						<td> ${tempItem.unit} </td>
						<td> ${tempItem.beginningInventory} </td>
						<td> ${tempItem.pricePerUnit} </td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Menu Item List</title>
		<link rel="stylesheet" href="./style/style.css" type="text/css">
	<head>
	<body>
	<header>
		<span class="hcontent"> truYum</span>
		<span><img src="./images/truyum-logo-light.png"></span>
		<a class="ref-name" href = "ShowCart">Cart</a>
		<a class="ref-name" href = "ShowMenuItemListCustomer">Menu</a>
	</header>
	<div>
		<h3>Menu Items</h3>
		<h3 class="cart-notify">${msg}</h3>
		<table><tr>
				<th class="left">Name</th>
				<th class="center">Free Delivery</th>
				<th class="right">Price</th>
				<th class="center">Category</th>
				<th class="center">Action</th>
				</tr>
			<c:forEach items="${menuItemList}" var="menu">
			<tr>
			
				<td class="left"><c:out value="${menu.name}"></c:out></td>
				<td class="center"><c:out value="${menu.freeDelivery? 'Yes' : 'No'}"></c:out></td>
				<td class="right"><c:out value="Rs. ${menu.price}"></c:out></td>
				<td class="center"><c:out value="${menu.category}"></c:out></td>
				<td class="center">
					<a class="link" href="AddToCart?menuItemId=${menu.id}">Add to Cart</a>
				</td>
			</tr>
			</c:forEach> 
		</table>
	</div>
	<footer>
		<span class="fcontent">Copyright &copy 2019</span>
	</footer>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Edit Menu Notification</title>
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
		<h2>Menu Items</h2>
		<h3 class="cart-notify">Item added to Cart successfully</h3>
		<table>
			<tr>
				<th class="left">Name</th>
				<th class="center">Free Delivery</th>
				<th class="right">Price</th>
				<th class="center">Category</th>
				<th class="center">Action</th>
			</tr>
			<c:forEach items="${menuItemList}" var="menu">
			<tr>
				<td class="left">"${menu.name}"</td>
				<td class="center">"${menu.freeDelivery? 'Yes' : 'No'}"</td>
				<td class="right">Rs."${menu.price}"</td>
				<td class="center">"${menu.category}"</td>
				<td class="center">
					<a class="link" href="AddToCart?menuItemId=${menu.id}" >Add to Cart</a>
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
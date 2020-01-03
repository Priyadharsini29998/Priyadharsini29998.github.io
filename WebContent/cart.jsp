<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cart</title>
<link rel="stylesheet" href="./style/style.css" type="text/css">
<head>
<body>
	<header> <span class="hcontent"> truYum</span> <span><img
		src="./images/truyum-logo-light.png"></span> <a class="ref-name"
		href="ShowCart">Cart</a> <a class="ref-name"
		href="ShowMenuItemListCustomer">Menu</a> </header>
	<div>
		<h3>Cart</h3>
		<h3 class="cart-notify">${msg}</h3>
		<table class="cart">
			<tr>
				<th class="left">Name</th>
				<th class="left">Free Delivery</th>
				<th class="right">Price</th>
				<th class="center">Action</th>
				<th></th>
			</tr>
			<c:forEach items="${menuItemList}" var="menu">
				<tr>
					<td class="left"><c:out value="${menu.name}"></c:out></td>
					<td class="left"><c:out
							value="${menu.freeDelivery?'Yes':'No'}"></c:out></td>
					<td class="right"><c:out value="Rs. ${menu.price}"></c:out></td>
					<td class="center"><a class="link"
						href="RemoveCart?menuItemId=${menu.id}">Delete</a></td>
				</tr>
				</c:forEach>
				<table>
				<tr>
					<th class="right">Total :</th>
					<td class="left" >Rs. ${tot}</td>
				</tr>
				</table>
		</table>
	</div>
	<footer> <span class="fcontent">Copyright &copy 2019</span> </footer>
</body>
</html>
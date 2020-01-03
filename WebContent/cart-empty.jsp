<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Cart Empty</title>
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
		<h2>Cart</h2></br>
		<h3 class="cart-empty">${msg}<a href="ShowMenuItemListCustomer" class="EmptyLink"> Menu Item List.</a></h3>
	</div>
	<footer>
		<span class="fcontent">Copyright &copy 2019</span>
	</footer>
	</body>
</html>

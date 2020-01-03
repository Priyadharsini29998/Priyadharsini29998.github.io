<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit Menu Item</title>
<link rel="stylesheet" href="./style/style.css" type="text/css">
<head>
<body>
	<header> <span class="hcontent"> truYum</span> <span><img
		src="./images/truyum-logo-light.png"></span> <a class="ref-name"
		href="ShowMenuItemListAdmin">Menu</a> </header>
	<div>
		<h3>Edit Menu Item</h3>
		<form name="InputValidate" method="post"
			onsubmit="return form_validate()"
			action="EditMenuItem?menuItemId=${menuItem.id}">
			<table>
				<tr colspan="4">
					<td>Name</td>
				</tr>
				<tr>
					<td colspan="4"><input type="text" class="cell-size"
						id="txtName" name="txtName" value="${menuItem.name}" /></td>
				</tr>
				<tr>
					<td>Price(Rs.)</td>
					<td>Active</td>
					<td>Date of Launch</td>
					<td>Category</td>
				</tr>
				<tr>
					<td><input type="text" class="right" id="txtPrice"
						name="txtPrice" size="15" value="${menuItem.price}"></td>
					<td><input type="radio" id="rdoYes" name="txtRadio"> <label
						for="rdYes"> Yes </label> <input type="radio" id="rdoNo"
						name="rdo""> <label for="rdNo"> No </label></td>

					<td><input type="text" id="txtLaunch" name="txtLaunch"
						value="<fmt:formatDate pattern="dd/MM/yyyy" value="${menuItem.dateOfLaunch}"/>">
					</td>
					<td><select name="Category">
							<option value="${menuItem.category}">${menuItem.category}</option>
							<option value="Starters">Starters</option>
							<option value="Main Course">Main Course</option>
							<option value="Dessert">Dessert</option>
							<option value="Drink">Drinks</option>
					</select></td>
				</tr>
				<tr colspan="2">
					<td><input type="checkbox" checked name="checkbox">Free
						Delivery</></td>
				</tr>
				<tr colspan="2">
					<td><input type="submit" class="save-btn" name="submit"
						value="Save"></td>
				</tr>
			</table>
		</form>
	</div>
	<footer> <span class="fcontent">Copyright &copy 2019</span> </footer>
	<script type="text/javascript" src="./js/script.js"></script>
</body>
</html>




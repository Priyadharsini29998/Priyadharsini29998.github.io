function validate() {
	var itemName = document.forms["InputValidate"]["txtName"].value;
	if (itemName == "") {
		alert("Title is required.");
		document.InputValidate.txtName.focus();
		return false;
	}
	if ((itemName.length < 2) || (itemName.length > 30)) {
		alert("Title should have 2 to 65 characters.");
		return false;
	}
	var itemPrice = document.forms["InputValidate"]["txtPrice"].value;
	if (itemPrice == "") {
		alert("Price is required.");
		return false;
	}
	if (/[^0-9/.]/.test(itemPrice)) {
		alert("Price has to be a number.");
		return false;
	}
	var launchDate = document.forms["InputValidate"]["dateOfLaunch"].value;
	if (launchDate == "") {
		alert("Date of Launch is required.");
		return false;
	}

	var itemCategory = document.forms["InputValidate"]["Category"].value;
	if (itemCategory == "") {
		alert("Category is required.");
		return false;
	}
}

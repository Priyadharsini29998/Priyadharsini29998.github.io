function form_validate(Input) {
    var pricePatt = /^[0-9]+$/;
	var price = document.forms["InputValidate"]["txtPrice"].value; 
	var name = document.forms["InputValidate"]["txtName"].value; 
	var dateLaunch = document.forms["InputValidate"]["txtLaunch"].value;
	if(name == " " || name == null) {
		alert("Item Name should not be empty...");
		name.focus();
		return false;
	}
	if(name.length < 2) {
		alert("Item name should be greater than 2...");
		name.focus();
		return false;
	}
	if(Input.value.match(pricePatt)) {
		price.focus();
		return true;
	}
	else {
		alert("Please provide numeric value for price...");
		return false;
	}
	if(dateLaunch == " " || dateLaunch == null) {
		alert("Date of Launch should not be empty...");
		return false;
	}
	return true;	
}

// Include truYum form validation functions here
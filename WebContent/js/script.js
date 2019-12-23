function validate() {
    var pricePatt = /^[0-9]+$/;
	var price = document.InputValidate.txtPrice.value; 
	var name = document.InputValidate.txtName; 
	var dateLaunch = document.InputValidate.txtLaunch.value;
	if(name.value == " " || name.value == null) {
		alert("Item Name should not be empty...");
		return false;
		name.focus();
	}
	if(name.value.length < 2) {
		window.alert("Item name should be greater than 2...");
		return false;
	}
	if(Input.value.match(pricePatt)) {
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
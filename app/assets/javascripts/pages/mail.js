var emailField = document.getElementById();

emailField.onfocus = function () {
	if ( emailField.value =="Insert Contact email") {
		emailField.value = ""	
	}
};

emailField.onblur = function () {
	if ( emailField.value =="") {
		emailField.value = "Insert Contact email"	
	}
};
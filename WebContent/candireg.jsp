<!DOCTYPE html>
<html lang="en">
<head>

<title>candidate signup</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images1/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts1/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts1/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css1/util.css">
<link rel="stylesheet" type="text/css" href="css1/main.css">
<!--===============================================================================================-->
<button id="back" onclick="goBack()">Back</button>
<script>
function goBack() {
  window.history.back();
}
</script>
<script>
function charonly(e) {
    var unicode = e.charCode ? e.charCode : e.keyCode
    if (unicode != 8) {
        if ((unicode != 32 && (unicode < 65 || (unicode > 90 && (unicode < 97 || unicode > 122)))) && unicode != 39 && unicode != 45 && unicode != 9)
            return false
    }
}

function checkPass()
{
    //Store the password field objects into variables ...
    var password = document.getElementById('pas1');
    var confirm  = document.getElementById('pas2');
    //Store the Confirmation Message Object ...
    var message = document.getElementById('confirm-message2');
    //Set the colors we will be using ...
    var good_color = "#006400";
    var bad_color  = "#ff6666";
    //Compare the values in the password field
    //and the confirmation field
    if((password.value.length>7)&&(confirm.value.length>7))
    {
    if(password.value == confirm.value){
        //The passwords match.
        //Set the color to the good color and inform
        //the user that they have entered the correct password
        //confirm.style.backgroundColor = good_color;
        message.style.color           = good_color;
        message.innerHTML             = 'Passwords Match!';
    }
    else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        //confirm.style.backgroundColor = bad_color;
        message.style.color           = bad_color;
        message.innerHTML             = 'Passwords Do Not Match!';
    }
}  
}

</script>
</head>
<body>


	<div class="container-login100"
		style="background-image: url('images1/background.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form action="candisignup" method="post"
				class="login100-form validate-form">
				<span class="login100-form-title p-b-37"> Create a account </span>

				<div class="wrap-input100 validate-input m-b-20"
					data-validate="Enter name">
					<input class="input100" type="text" name="name" placeholder="Name"
						onkeypress="return charonly(event)"> <span
						class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-20"
					data-validate="Enter mobile.no">
					<input class="input100" type="tel" name="mobile"
						placeholder="Mobile.no" maxlength="10"> <span
						class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-20"
					data-validate="Enter mail id">
					<input class="input100" type="email" name="email"
						placeholder="Email"> <span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-25"
					data-validate="Enter password">
					<input class="input100" type="password" id="pas1" name="password"
						placeholder="Password"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25"
					data-validate="Enter password">
					<input class="input100" type="password" id="pas2" name="password"
						placeholder="Re-password"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
					<button class="login100-form-btn">Create</button>
				</div>


			</form>



		</div>
	</div>



	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="vendor1/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor1/daterangepicker/moment.min.js"></script>
	<script src="vendor1/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="vendor1/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="js1/main.js"></script>
	

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Sign Up</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css1/util.css">
<link rel="stylesheet" type="text/css" href="css1/main.css">
<style type="text/css">
.last-box {
	text-align: center;
}
</style>
<script src="matchPassword.js"></script>
<script>
	$(function() {
		$("#dialog").dialog();
	});
</script>
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form p-l-55 p-r-55 p-t-178"
					name="signup" action="RegistrationController" method="post">
					<span class="login100-form-title">Sign Up </span>

					<div class="wrap-input100 validate-input m-b-16"
						data-validate="Please enter username">
						<input class="input100" type="text" name="username"
							placeholder="Username" required="required"> <span
							class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-16"
						data-validate="Please enter username">
						<input class="input100" type="text" name="name" placeholder="Name"
							required="required"> <span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-16"
						data-validate="Please enter username">
						<input class="input100" type="email" name="emailid"
							placeholder="Email Id" required="required"> <span
							class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-16"
						data-validate="Please enter username">
						<input class="input100" type="text" name="mobileno"
							placeholder="Mobile No." required="required"> <span
							class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-16 pass_show"
						data-validate="Please enter username">
						<input class="input100" type="password" id="password"
							name="password" placeholder="Password" required="required"><span
							class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-16"
						data-validate="Please enter username">
						<input class="input100" type="password" id="cnfpassword"
							name="confirmpassword" placeholder="Confirm Password"
							required="required"> <span class="focus-input100"></span>
					</div>
					<input type="hidden" value="S" name="usertype" value="S" >
					<br>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit"
							onclick="return checkPassword()" value="login">Submit</button>
					</div>
				</form><br><br>
				<div class="last-box">
					<span class="txt1 p-b-9"> Already Register ? </span> <a
						href="login.jsp" class="txt3"> Login </a>


				</div>
				<br><br>
			</div>
		</div>
	</div>
</body>
</html>

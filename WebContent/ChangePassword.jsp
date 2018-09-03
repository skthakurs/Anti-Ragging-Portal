<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
</head>
<body>
	<h3>${password_msg }</h3>
	<form action="PasswordController">
		
		Old Password : <input type="text" name="password"><br>
		New Password : <input type="text" name="newpassword"><br>
		Confirm Password : <input type="text" name="confirmpassword"><br>
		<input type="submit" value="Update">
	
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Complaint Status</title>
</head>
<body>
	<div>
		<h2>
			<center>Old Status</center>
		</h2>
		Complain No. : <br> 
		Date Of Update : <br> 
		Update By : <br>
		Comment : <br> 
		Action : <br> 
		Last Status : <br>
	</div>
	<div>
		<h2>
			<center>Current Status</center>
		</h2>
		<form action="ComplaintStatusController">
		Complain No. : <input type="text" name="complain_no"> <br> 
		Date Of Update : <input type="text" name="date_of_update"><br> 
		Update By :<input type="text" name="update_by"> <br>
		Comment : <input type="text" cols="60" rows="5" style="width:200px; height:50px;" name="comment" ><br> 
		Action : <input type="text" cols="70" rows="6" style="width:350px; height:70px;" name="action" ><br> 
		Current Status :<input type="text" name="current_status"> <br>
		<input type="submit" value="Update">
		</form>
	</div>
</body>
</html>
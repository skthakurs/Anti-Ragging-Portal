<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complaint Status</title>
</head>
<body>
	<center>
		<table>
			<tr>
				<th colspan="2">
					<h2>Your Compalint Status</h2>
				</th>
			</tr>
			<tr>
				<th>Complain No. :</th>
				<th>${complain_no }</th>
			</tr>
			<tr>
				<th>Date of Update :</th>
				<th>${date_of_update }</th>
			</tr>
			<tr>
				<th>Updated By :</th>
				<th>${update_by }</th>
			</tr>
			<tr>
				<th>Comment :</th>
				<th>${comment }</th>
			</tr>
			<tr>
				<th>Action :</th>
				<th>${action }</th>
			</tr>
			<tr>
				<th>Current Status :</th>
				<th>${current_status }</th>
			</tr>
		</table>
	</center>
</body>
</html>
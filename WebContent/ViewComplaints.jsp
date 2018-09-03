<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Complaints</title>
</head>
<body>
<jsp:include page="Adminnav.jsp" />
	<center>
		<h2>Complaints</h2>
	</center>
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th>Complain No.</th>
				<th>Date</th>
				<th>Username</th>
				<th>Name</th>
				<th>Current Status</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${comp }" var="complaint">
				<tr>
					<td>${complaint.complain_no }
					<td>${complaint.date_of_update }</td>
					<td>${complaint.username }</td>
					<td>${complaint.name }</td>
					<td>${complaint.current_status }</td>

				</tr>
			</c:forEach>
		</tbody>

	</table>

</body>
</html>
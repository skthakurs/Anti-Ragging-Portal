<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details of all users.</title>


<style>
table, th, td {
	border: 2px solid black;
	padding: 10px;
}
</style>
</head>
<body>
	<jsp:include page="Adminnav.jsp" />
<br>
	<center><H1 STYLE='COLOR: BLUE'>All Users</H1></center>

	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">S.No.</th>
				<th scope="col">Username</th>
				<th scope="col">Name</th>
				<th scope="col">Login Status</th>
				<th scope="col">User Type</th>
				<th scope="col">Email Id</th>
				<th scope="col">Mobile No</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users}" var="user" varStatus="counter">
				<tr>
					<td scope="row">${counter.count}</td>
					<td>${user.username}</td>
					<td>${user.name }
					<td>${user.loginStatus}</td>
					<td>${user.userType}</td>
					<td>${user.emailid}</td>
					<td>${user.mobileno}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>



</body>
</html>
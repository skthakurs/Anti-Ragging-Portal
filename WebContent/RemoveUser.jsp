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

.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    width:100%;
    height:100%;
    margin: 4px 2px;
    cursor: pointer;
    background-color: #f44336;
}
.table-hover{background-color: #42e8f4;}

</style>

</head>
<body>
	<jsp:include page="Adminnav.jsp" />
<br>
	<center><H1 STYLE='COLOR: BLUE'>All Users</H1></center>

	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th scope="col">S.No.</th>
				<th scope="col">Username</th>
				<th scope="col">Name</th>
				<th scope="col">Login Status</th>
				<th scope="col">User Type</th>
				<th scope="col">Email Id</th>
				<th scope="col">Mobile No</th>
				<th scope="col">Click To Delete</th>
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
					<td><a href="DeleteUserController?delete=${user.username}"><button class="button button3">Remove</button></a>
				</tr>
			</c:forEach>
		</tbody>
	</table>



</body>
</html>
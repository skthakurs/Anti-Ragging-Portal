<%@page import="com.login.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.1/css/all.css">
<link rel="stylesheet" href="style.css">
<title>Nav Bar</title>
<style>
.dropdown:hover .dropdown-menu {
	display: block;
	background-color: #373c42;
}

.dropdown-item {
	color: white;
}
</style>
</head>

<body>

	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container  ">
			<a class="navbar-brand" href="#">Anti-Ragging Portal</a>
			<ul class="nav navbar-nav mai-top-nav">
				<li class="nav-item"><a class="nav-link"
					href="StudentDasboard.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href="ComplaintRegister.jsp">Add Complain</a></li>
				<li class="nav-item"><a class="nav-link" href="Feedback.jsp">Feedback</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="status.jsp">Status</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="ContactUs.jsp">Contact</a>
				</li>
			</ul>

			<ul class="nav navbar-nav float-lg-right mai-user-nav">
				<li class="dropdown nav-item"><a
					class="dropdown-toggle nav-link" href="#" data-toggle="dropdown"
					role="button" aria-expanded="false"> <img src="icons/avatar.jpg"
						class="rounded-circle" style="height: 30px; width: 30px;"> <span
						class="user-name">
							<%
								//HttpSession session = request.getSession(false);
								//if(session!=null){
								String username = (String) session.getAttribute("username");
								if (username != null) {
									//User user = (User) session.getAttribute("username");
									//out.print(user.getUsername());
									out.print(username);

								}
							%>
					</span> <span class="angle-down s7-angle-down"></span>
				</a>
					<div class="dropdown-menu" role="menu">

						<a class="dropdown-item" href="UserController">Profile</a> <a
							class="dropdown-item" href="ChangePassword.jsp">Change
							Password</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="LogoutController">Logout</a>
					</div></li>
			</ul>
		</div>
	</nav>

	
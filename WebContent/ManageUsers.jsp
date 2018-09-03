<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Users</title>
</head>
<body>
	<jsp:include page="Adminnav.jsp" />
	<!--Header section  -->
	<div class="container" id="home">
		<div class="row text-center ">

			</div>
			<div class="col-md-4 head-main ">
			<a href="ViewAllUserController?action=displayAllUser.jsp" style="color: #47d147"> <img
				alt="image" src="icons/allusers.png" width="150px" height="150px">
				<h3>ALL USERS</a>
			</h3>

		</div>
			<div class="col-md-4 head-main ">
				<a href="AddUser.jsp" style="color: #47d147"> <img
					alt="Add User" src="icons/adduser.png" width="150px" height="150px">
					<h3>  ADD USER</a>
				</h3>

			</div>
			<div class="col-md-4 head-main ">
				<a href="ViewAllUserController?action=RemoveUser.jsp" style="color: #47d147"> <img
					alt="Remove User" src="icons/removeuser.png" width="150px" height="150px">
					<h3>DELETE USER</a>
				</h3>

			</div>
			
			

		</div>
	</div>
	<!--End Header section  -->



	<!--About Section-->
	<section class="for-full-back color-light " id="about">
	<div class="container">


		<!--footer Section -->
		<div class="for-full-back " id="footer">&copy; 2018 | All Right
			Reserved</div>
	</div>
	</section>


</body>
</html>
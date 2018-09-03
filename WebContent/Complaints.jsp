<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Users</title>
<style type="text/css">
.footer {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
   
    color: white;
    text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="Adminnav.jsp" />
	<!--Header section  -->
	<div class="container" id="home">
		<div class="row text-center ">

			<div class="col-md-4 head-main ">
				<a href="ViewComplaintController?status=pending" style="color: #47d147"><img
					alt="Pending" src="icons/pendingcomplaints.png" width="150px" height="150px" name="pending">
					
					
					<h3>PENDING COMPLAINTS</a>
				</h3>

			</div>
			<div class="col-md-4 head-main ">
				<a href="ViewComplaintController?status=active" style="color: #47d147"> <img
					alt="Active" src="icons/activecomplaints.png" width="150px" height="150px">
					<%request.setAttribute("msg", "active"); %>
					<h3>ACTIVE COMPLAINTS</a>
				</h3>

			</div>
			<div class="col-md-4 head-main ">
				<a href="ViewComplaintController?status=closed" style="color: #47d147"> <img
					alt="Closed" src="icons/closedcomplaints.png" width="150px" height="150px">
					<%request.setAttribute("msg", "closed"); %>
					<h3>CLOSED COMPLAINTS</a>
				</h3>

			</div>
			
			

		</div>
	</div>
	<!--End Header section  -->



	<!--About Section-->
	<section class="for-full-back color-light footer" id="about">
	<div class="container">


		<!--footer Section -->
		<div class="for-full-back footer" id="footer">&copy; 2018 | All Right
			Reserved</div>
	</div>
	</section>


</body>
</html>
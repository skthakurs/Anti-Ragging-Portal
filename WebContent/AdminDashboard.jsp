
<!DOCTYPE jsp:include PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin Dashboard</title>
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
				<a href="ManageUsers.jsp" style="color: #47d147"> <img
					alt="image" src="icons/manageuser.png" width="150px" height="150px">
					<h3>MANAGE USERS</a>
				</h3>

			</div>

			<div class="col-md-4 head-main">
				<a href="Complaints.jsp" style="color: #47d147"> <img
					alt="View Compalins" src="icons/complaint.jpg" width="150px"
					height="160px">
					<h3>COMPLAINTS</a>
				</h3>

			</div>
		
			<div class="col-md-4 head-main ">
				<a href="AllFeedback.jsp" style="color: #47d147"> <img
					alt="image" src="icons/feedback.png" width="150px" height="150px">
					<h3>FEEDBACKS</a>
				</h3>



			</div>
		</div>
		<!--End Header section  -->



		<!--About Section-->
		<section class="for-full-back color-light footer" id="about">

		<div class="for-full-back footer" id="footer">&copy; 2018 | All Right
			Reserved</div>

		</section>
	</div>
</body>
</html>
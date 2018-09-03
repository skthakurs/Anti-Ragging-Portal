<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>Anti-Ragging Portal</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!--    Google Fonts-->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<!--Fontawesome-->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!--Animated CSS-->
<link rel="stylesheet" type="text/css" href="css/animate.min.css">

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!--Bootstrap Carousel-->
<link type="text/css" rel="stylesheet" href="css/carousel.css" />

<link rel="stylesheet" href="css/isotope/style.css">

<!--Main Stylesheet-->
<link href="css/style.css" rel="stylesheet">
<!--Responsive Framework-->
<link href="css/responsive.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style>
.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	color:red;
	display: none;
	position: absolute;
	background-color: #ffffff;
	min-width: 180px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	padding: 1px 16px;
	z-index: 10;
}

.dropdown:hover .dropdown-content {
	display: block;
}

</style>
</head>

<body data-spy="scroll" data-target="#header">
	<!--Start Header Section-->
	<section id="header">
		<!--End of top header-->
		<div class="header_menu text-center" data-spy="affix"
			data-offset-top="50" id="nav">
			<div class="container">
				<nav class="navbar navbar-default zero_mp ">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand custom_navbar-brand" href="index.html"><img
							src="img/antiragging.png" alt="" height="1px" width="80px"></a>
					</div>
					<!--End of navbar-header-->

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse zero_mp"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right main_menu">
							<li class="active"><a href="#header">Home <span
									class="sr-only">(current)</span></a></li>
							<li><a href="#welcome"
								onclick="document.getElementById('id01').style.display='block'">About</a></li>
							
							
							<li><a href="Feedback.jsp">Feedback</a></li>
							<li><a href="Blogs.jsp">FAQs</a></li>
							<li><a href="ContactUs.jsp">Contact Us</a></li>
							<li><a href="login.jsp">Login / Sign up</a></li>
							<li><div class=dropdown>
							<br> <a href="#">
							<strong> 
							<%
		//						HttpSession session = request.getSession(false);
								String username = (String) session.getAttribute("username");
 								if (username != null) {
 								//User user = (User) session.getAttribute("username");
 								//out.print(user.getUsername());
 								out.print(username);
 								}
 							%>
							</strong></a>
							<div class="dropdown-content">
								<p>
									<a href="UserController" class="dropdown-text">PROFILE</a> <br> <br>
									<a href="<%if(username=="ADMIN"){RequestDispatcher rd= null;rd=request.getRequestDispatcher("AdminDashboard.jsp");rd.forward(request, response);} %>" class="dropdown-text">USER DASHBOARD</a> <br> <br>
									<a href="ChangePassword.jsp" class="dropdown-text">CHANGE PASSWORD</a><br /> 
									<hr style="5px">
									<a href="LogoutController" class="dropdown-text">LOG OUT</a>
							
							</div>
						</div>
					</li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
				<!--End of nav-->
			</div>
			<!--End of container-->
		</div>
		<!--End of header menu-->
		
		<!--end of header area-->
	</section>
	<!--End of Hedaer Section-->
	<!-- -->
	</body>
	</html>


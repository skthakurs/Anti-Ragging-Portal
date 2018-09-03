<%@page import="com.login.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link href="assets/css1/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLE CSS -->
    <link href="assets/css1/font-awesome.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css1/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Ruluko' rel='stylesheet' type='text/css' />
      <style>
.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color:#404040;
    min-width: 120px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    padding: 12px 16px;
    z-index: 1;
}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>
    
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">Anti-Ragging Portal</a>
            </div>
            <!-- Collect the nav links for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="AdminDashboard.jsp">HOME</a>
                    </li>
                    <li><a href="Complaints.jsp">COMPLAINTS</a>
                    </li>
                    <li><a href="ManageUsers.jsp">MANAGE USERS</a>
                    </li>
                    <li><a href="AllFeedback.jsp">FEEDBACKS</a>
                    </li>
                    
                    
                    <li>
                    <div class=dropdown>
					<br>
					<a href="#"><strong><%
								//HttpSession session = request.getSession(false);
								String username = (String) session.getAttribute("username");
 								if (username != null) {
 								//User user = (User) session.getAttribute("username");
 								//out.print(user.getUsername());
 								out.print(username);
 								}
 							%></strong></a>
					<div class="dropdown-content">
							<p><a href="profile.jsp">PROFILE</a>
							<br><br>
							<a href="changePassword.jsp">CHANGE PASSWORD</a>
							<br >
							<hr>
							<a href="LogoutController">LOGOUT</a>
							</p>
                    </div>
					</div>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!--End footer Section -->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/plugins1/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP CORE SCRIPT   -->
    <script src="assets/plugins1/bootstrap.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js1/custom.js"></script>
</body>
</html>
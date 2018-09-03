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
</head>

<body data-spy="scroll" data-target="#header">

  <jsp:include page="MainNav.jsp" />
	
<!--Start of slider section-->
	<section id="slider">
		<div id="carousel-example-generic"
			class="carousel slide carousel-fade" data-ride="carousel"
			data-interval="3000">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<div class="slider_overlay">
						<img src="img/antiragg.jpg" alt="...">
						<div class="carousel-caption">
							<div class="slider_text">
								<h3>Say No To</h3>
								<h2>Ragging</h2>
								<p>Ragging is a crime</p>

								<!-- <a href="" class="custom_btn">Read  More</a>-->
								<button
									onclick="document.getElementById('id01').style.display='block'"
									class="w3-button w3-green">Read More</button>

							</div>
						</div>
					</div>
				</div>
				<!--End of item With Active-->
				<div class="item">
					<div class="slider_overlay">
						<img src="img/antira.jpg" alt="...">
						<div class="carousel-caption">
							<div class="slider_text">
								<h3>Say No To</h3>
								<h2>Ragging</h2>
								<p>Ragging is a crime</p>
								<button
									onclick="document.getElementById('id01').style.display='block'"
									class="w3-button w3-green">Read More</button>
							</div>
						</div>
					</div>
				</div>
				<!--End of Item-->
				<div class="item">
					<div class="slider_overlay">
						<img src="img/antire.jpg" alt="...">
						<div class="carousel-caption">
							<div class="slider_text">
								<h3>Say No To</h3>
								<h2>Ragging</h2>
								<p>Ragging is a crime</p>
								<button
									onclick="document.getElementById('id01').style.display='block'"
									class="w3-button w3-green">Read More</button>
							</div>
						</div>
					</div>
				</div>
				<!--End of item-->
			</div>
			<!--End of Carousel Inner-->
		</div>
	</section>
	<!--end of slider section-->
	<div id="id01" class="w3-modal">
		<div class="w3-modal-content">
			<header class="w3-container w3-green">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="w3-button w3-display-topright">&times;</span>
				<h2>About</h2>
			</header>
			<div class="w3-container">
				<p></p>
				<br>
				<p>Ragging has ruined countless innocent lives and careers. In
					order to eradicate it, Hon’ble Supreme Court in Civil Appeal No.
					887 of 2009, passed the judgement wherein guidelines were issued
					for setting up of a Central Crisis Hotline and Anti-Ragging
					database.</p>
				<br>
				<p>In accordance with the orders, UGC (University Grants
					Commission), Govt. of India has developed this web portal.</p>
				<br>
				<p>This portal will contain:</p>
				<br>
				<p>1. A form for registering complaints regarding ragging.</p>
				<br>
				<p>2. Record of registered complaints received and the status of
					the action taken.</p>
				<br>
				<p>The aim of the portal is to eliminate ragging in all its
					forms from universities, deemed universities and other higher
					educational institutions in the country. This will be achieved by
					preventing its occurrence and punishing those who indulge in
					ragging, in accordance with the Supreme Court Regulations.</p>
				<br>
				<p></p>
			</div>
			<footer class="w3-container w3-green">

				<p>Copyright 2018.</p>
			</footer>
		</div>
	</div>
	
	<section id="volunteer">
		<div class="container">
			<div class="row vol_area">
				<div class="col-md-4">
					<div class="volunteer_content">
						<h3>
							<span></span>
						</h3>

					</div>
				</div>

			</div>

		</div>

	</section>
	<!--Start of counter-->
	<section id="counter">
		<div class="counter_img_overlay">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="counter_header">
							<h2>OUR achivement</h2>
							<p>This is a representation of total complaints received,
								closed and under processing complaints till date.</p>
						</div>
					</div>
					<!--End of col-md-12-->
				</div>
				<!--End of row-->
				<div class="row">
					<div class="col-md-3">
						<div class="counter_item text-center">
							<div class="sigle_counter_item">
								<i class="glyphicon glyphicon-edit" style="color: #03a303"></i>
								<!--<img src="img/tree.png" alt="">-->
								<div class="counter_text">
									<span class="counter">542</span>
									<p>Total Complaints</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="counter_item text-center">
							<div class="sigle_counter_item">
								<i class="glyphicon glyphicon-check" style="color: #03a303"></i>
								<div class="counter_text">
									<span class="counter">458</span>
									<p>Complaints Closed</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="counter_item text-center">
							<div class="sigle_counter_item">
								<i class="glyphicon glyphicon-hourglass" style="color: #03a303"></i>
								<div class="counter_text">
									<span class="counter">84</span>
									<p>Active Complaints</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="counter_item text-center">
							<div class="sigle_counter_item">
								<i class="glyphicon glyphicon-send" style="color: #03a303"></i>
								<div class="counter_text">
									<span class="counter">412</span>
									<p>Total Feedbacks</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--End of row-->
			</div>
			<!--End of container-->
		</div>
	</section>
	<!--end of counter-->


	<!--  -->
	<!--start of event-->
	<section id="event">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="event_header text-center">
						<h2>latest event</h2>
						<p>Latest news and events related to anti-ragging.</p>
					</div>
				</div>
			</div>
			<!--End of row-->
			<div class="row">
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-6 zero_mp">
							<div class="event_item">
								<div class="event_img">
									<img src="img/news1.JPG" alt="">
								</div>
							</div>
						</div>
						<div class="col-md-6 zero_mp">
							<div class="event_item">
								<div class="event_text text-center">
									<a href=""><h4>Fight against ragging</h4></a>
									<h6>15-16 May 2018</h6>
									<p>Nagpur students make short film to fight ragging menace.</p>
									<a href="" class="event_btn">read more</a>
								</div>
							</div>
						</div>
					</div>
					<!--End of row-->
					<div class="row">
						<div class="col-md-6 zero_mp">
							<div class="event_item">
								<div class="event_text text-center">
									<a href=""><h4>Shilpa Shetty Kundra takes action
											against ragging</h4></a>
									<h6>15-June 18</h6>
									<p>The actress would be a part of antiragging initiative.</p>
									<a href="" class="event_btn">read more</a>
								</div>
							</div>
						</div>
						<div class="col-md-6 zero_mp">
							<div class="event_item">
								<div class="event_img">
									<img src="img/news2.jpg" alt="">
								</div>
							</div>
						</div>
					</div>
					<!--End of row-->
				</div>
				<!--End of col-md-8-->
				<div class="col-md-4">
					<div class="event_news">
						<div class="event_single_item fix">
							<div class="event_news_img floatleft">
								<img src="img/news3.jpg" alt="">
							</div>
							<div class="event_news_text">
								<a href="#"><h4>MGM College to form an anti-ragging
										squad at hostel level.</h4></a>
								<p>The Medical College takes an initiative.</p>
							</div>
						</div>
					</div>
					<div class="event_news">
						<div class="event_single_item fix">
							<div class="event_news_img floatleft">
								<img src="img/ragging1.jpg" alt="">
							</div>
							<div class="event_news_text">
								<a href="#"><h4>Anti-Ragging declaration a must in
										College application.</h4></a>
								<p></p>
							</div>
						</div>
					</div>
					<div class="event_news">
						<div class="event_single_item fix">
							<div class="event_news_img floatleft">
								<img src="img/news5.jpg" alt="">
							</div>
							<div class="event_news_text">
								<a href="#"><h4>Four MBBS students suspended for
										ragging first year.</h4></a>
								<p></p>
							</div>
						</div>
					</div>
					<div class="event_news">
						<div class="event_single_item fix">
							<div class="event_news_img floatleft">
								<img src="img/antiragging_new.jpg" alt="">
							</div>
							<div class="event_news_text">
								<a href="#"><h4>Kamali team launches anti-ragging
										campaing.</h4></a>
								<p></p>
							</div>
						</div>
					</div>
					<div class="event_news">
						<div class="event_single_item fix">
							<div class="event_news_img floatleft">
								<img src="img/news4.jpg" alt="">
							</div>
							<div class="event_news_text">
								<a href="#"><h4>DAVV orders strict compliance to
										antiragging guidlines</h4></a>
								<p></p>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-4-->
			</div>
			<!--End of row-->
		</div>
		<!--End of container-->
	</section>
	<!--end of event-->



	<!--Start of footer-->
	<section id="footer">
		<div class="container">
			<div class="row text-center">
				<div class="col-md-6">
					<div class="copyright">
						<p>
							&copy; No Copyright @ 2018 
						</p>
					</div>
				</div>
				<div class="col-md-6">
					<div class="designer">
						<p>
							A Design By <a href="ContactUs.jsp">Our Team</a>
						</p>
					</div>
				</div>
			</div>
			<!--End of row-->
		</div>
		<!--End of container-->
	</section>
	<!--End of footer-->



	<!--Scroll to top-->
	<a href="#" id="back-to-top" title="Back to top">&uarr;</a>
	<!--End of Scroll to top-->


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!-- <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>-->
	<script src="js/jquery-1.12.3.min.js"></script>

	<!--Counter UP Waypoint-->
	<script src="js/waypoints.min.js"></script>
	<!--Counter UP-->
	<script src="js/jquery.counterup.min.js"></script>

	<script>
		//for counter up
		$('.counter').counterUp({
			delay : 10,
			time : 1000
		});
	</script>


	<!--Isotope-->
	<script src="js/isotope/min/scripts-min.js"></script>
	<script src="js/isotope/cells-by-row.js"></script>
	<script src="js/isotope/isotope.pkgd.min.js"></script>
	<script src="js/isotope/packery-mode.pkgd.min.js"></script>
	<script src="js/isotope/scripts.js"></script>


	<!--Back To Top-->
	<script src="js/backtotop.js"></script>


	<!--JQuery Click to Scroll down with Menu-->
	<script src="js/jquery.localScroll.min.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<!--WOW With Animation-->
	<script src="js/wow.min.js"></script>
	<!--WOW Activated-->
	<script>
		new WOW().init();
	</script>


	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Custom JavaScript-->
	<script src="js/main.js"></script>
</body>

</html>

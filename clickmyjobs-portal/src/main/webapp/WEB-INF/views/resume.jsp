<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="assets/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>MyJobs-Portal-Candidate-Profile</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="assets/css/animate.min.css" rel="stylesheet" />

<!--  Light Bootstrap Table core CSS    -->
<link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="assets/css/demo.css" rel="stylesheet" />


<!--     Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'
	rel='stylesheet' type='text/css'>
<link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

</head>
<body>

	<div class="wrapper">
		<div class="sidebar" data-color="purple"
			data-image="assets/img/sidebar-5.jpg">

			<!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="http://www.creative-tim.com" class="simple-text">
						Creative Tim </a>
				</div>

				<ul class="nav">
					<li class="active"><a href="dashboard.do"> <i
							class="pe-7s-graph"></i>
							<p>Dashboard</p>
					</a></li>
					<li><a href="resume.do"> <i class="pe-7s-user"></i>
							<p>My Resume</p>
					</a></li>
					<li><a href="bookmarked.do"> <i class="pe-7s-note2"></i>
							<p>Bookmarked Jobs</p>
					</a></li>
					<li><a href="notifications.do"> <i class="pe-7s-news-paper"></i>
							<p>Notifications</p>
					</a></li>
					<li><a href="browsejobs.do"> <i class="pe-7s-science"></i>
							<p>Browse jobs</p>
					</a></li>
					<li><a href="browsecategories.do"> <i class="pe-7s-map-marker"></i>
							<p>Browse Categories</p>
					</a></li>
					<li><a href="manage-applications.do"> <i class="pe-7s-info"></i>
							<p>Manage Applications</p>
					</a></li>
					<li><a href="job-alerts.do"> <i class="pe-7s-bell"></i>
							<p>Job Alerts</p>
					</a></li>
					<!-- <li class="active-pro">
                    <a href="upgrade.html">
                        <i class="pe-7s-rocket"></i>
                        <p>Upgrade to PRO</p>
                    </a>
                </li>-->
				</ul>
			</div>
		</div>

		<div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#navigation-example-2">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Dashboard</a>
					</div>
					<div class="collapse navbar-collapse">
						<!--<ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-globe"></i>
                                    <b class="caret"></b>
                                    <span class="notification">5</span>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                              </ul>
                        </li>
                        <li>
                           <a href="">
                                <i class="fa fa-search"></i>
                            </a>
                        </li>
                    </ul>-->

						<ul class="nav navbar-nav navbar-right">

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <img src="assets/img/logo.png"
									alt="user" class="profile-pic" />Markarn Doe<b class="caret"></b>
							</a>
								<ul class="dropdown-menu">
									<li><a href="update-profile.do">Update Profile</a></li>
	                                <li><a href="changepassword.do">Change Password</a></li>
	                                <li><a href="logout.do">Log out</a></li>

								</ul></li>

						</ul>
					</div>
				</div>
			</nav>

			<div class="content">
				<div class="container-fluid">
					<div class="card">

						<div class="content">
							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="inner-box my-resume">
										<div class="author-resume">
											<div class="thumb">
												<img src="assets/img/resume/img-1.jpg" alt="">
											</div>
											<div class="author-info">
												<h3>Mark Anderson</h3>
												<p class="sub-title">UI/UX Designer</p>
												<p>
													<span class="address"><i class="ti-location-pin"></i>Mahattan,
														NYC, USA</span> <span><i class="ti-phone"></i>(+01)
														211-123-5678</span>
												</p>
												<div class="social-link">
													<a class="twitter" target="_blank"
														data-original-title="twitter" href="#"
														data-toggle="tooltip" data-placement="top"><i
														class="fa fa-twitter"></i></a> <a class="facebook"
														target="_blank" data-original-title="facebook" href="#"
														data-toggle="tooltip" data-placement="top"><i
														class="fa fa-facebook"></i></a> <a class="google"
														target="_blank" data-original-title="google-plus" href="#"
														data-toggle="tooltip" data-placement="top"><i
														class="fa fa-google"></i></a> <a class="linkedin"
														target="_blank" data-original-title="linkedin" href="#"
														data-toggle="tooltip" data-placement="top"><i
														class="fa fa-linkedin"></i></a>
												</div>
											</div>
										</div>
										<div class="about-me item">
											<h3>
												About Me <i class="ti-pencil"></i>
											</h3>
											<p>Nullam semper erat arcu, ac tincidunt sem venenatis
												vel. Curabitur a dolor ac ligula fermentum eusmod ac
												ullamcorper nulla. Integer blandit uitricies aliquam.
												Pellentesque quis dui varius, dapibus vilit id, ipsum. Morbi
												ac eros feugiat, lacinia elit ut, elementum turpis.
												Curabitur justo sapien, tempus sit amet ruturm eu, commodo
												eu lacus. Morbi in ligula nibh. Maecenas ut mi at odio
												hendririt eleif end tempor vitae augue. Fusce eget arcu et
												nibh dapibus maximus consectetur in est. Sed iaculis Luctus
												nibh sed veneatis.</p>
										</div>
										<div class="work-experence item">
											<h3>
												Work Experience <i class="ti-pencil"></i>
											</h3>
											<h4>UI/UX Designer</h4>
											<h5>Bannana INC.</h5>
											<span class="date">Fab 2017-Present(5year)</span>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Libero vero, dolores, officia quibusdam architecto
												sapiente eos voluptas odit ab veniam porro quae possimus
												itaque, quas! Tempora sequi nobis, atque incidunt!</p>
											<p>
												<a href="#">4 Projects</a>
											</p>
											<br>
											<h4>UI Designer</h4>
											<h5>Whale Creative</h5>
											<span class="date">Fab 2017-Present(2year)</span>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Libero vero, dolores, officia quibusdam architecto
												sapiente eos voluptas odit ab veniam porro quae possimus
												itaque, quas! Tempora sequi nobis, atque incidunt!</p>
											<p>
												<a href="#">4 Projects</a>
											</p>
										</div>
										<div class="education item">
											<h3>
												Education <i class="ti-pencil"></i>
											</h3>
											<h4>Massachusetts Institute Of Technology</h4>
											<p>Bachelor of Computer Science</p>
											<span class="date">2010-2014</span> <br>
											<h4>Massachusetts Institute Of Technology</h4>
											<p>Bachelor of Computer Science</p>
											<span class="date">2010-2014</span>
										</div>
									</div>



								</div>

							</div>
							<br> <br>

						</div>
					</div>
				</div>
			</div>


			<footer class="footer">
				<div class="container-fluid">
					<nav class="pull-left">
						<ul>
							<li><a href="index.do"> Home </a></li>
							<li><a href="about.do"> Company </a></li>
							<!-- <li><a href="#"> Portfolio </a></li> -->
							<li><a href="blog.do"> Blog </a></li>
						</ul>
					</nav>
					<p class="copyright pull-right">
						&copy; 2018 <a href="http://www.clickmyjobs.com">Click Myjobs</a>,
						made for job hunting 
						
					</p>
				</div>
			</footer>

		</div>
	</div>


</body>

<!--   Core JS Files   -->
<script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="assets/js/bootstrap-checkbox-radio-switch.js"></script>



<!--  Notifications Plugin    -->
<script src="assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="assets/js/light-bootstrap-dashboard.js"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>
<script type="text/javascript"
	src="https://canvasjs.com/assets/script/canvasjs.min.js"> </script>
<script type="text/javascript">
	
    
		
		
	</script>

</html>

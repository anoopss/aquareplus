<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bs.min.css" type="text/css" />
<link rel="stylesheet" href="css/main.css" type="text/css" />
<link rel="stylesheet" href="css/menu.css" type="text/css" />
<link rel="stylesheet" href="css/fa.css" type="text/css" />

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script type='text/javascript' src="js/bs.min.js"></script>


<!--[if IE]>
<script src="http:http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<!--[if lte IE 7]>
<script src="js/IE8.js" type="text/javascript"></script><![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" href="css/fa.ie7.css" type="text/css" />
<link rel="stylesheet" type="text/css" media="all" href="css/ie6.css"/><![endif]-->

<script src="js/script.js"></script>
</head>
<body>

	<div class="row" id="logo-wrapper">

				<div class="span8 offset2">

					<img src="img/logo.png"/>

				</div>

			</div>

		</div>

		<div class="row" id="menu-wrapper">

			<div class="navbar navbar-static-top center">

				<div class="navbar-inner center">  

					<ul id="main-menu" class="nav nav-pills">

						<li class="active"><a href="#">Home</a></li>

						<li class="menu-divider">•</li>

						<li><a href="#">Services</a></li>

						<li class="menu-divider">•</li>

						<li><a href="#">About</a></li>

						<li class="menu-divider">•</li>

						<li><a href="#">Help</a></li>

						<li class="menu-divider">•</li>

						<li><a href="#">Settings</a></li>

					</ul>

					

				</div>

				<div class="navbar-inner">

					<ul class="pull-right" id="login">

						<li><a href="#">Sign In</a></li>

						<li class="sep">/</li>

						<li><a href="">Register</a></li>

					</ul>	

				</div>

							

			</div>

		</div>
	
	
		<div class="container">

			<div class="row">

				<div class="span8 offset2">

					<div class="row">

						<div class="span2">

						</div>

					</div>

					<div class="row">

						<div class="span2 left-menu" id="left-menu">

							<div id="nav-head" class="nav-header" style="margin-top:15px;">

								<a href="#" class="menu-head" data-toggle="collapse" data-target="#userMenu">Services <i style="margin-left:61px;" class="icon-chevron-sign-down"></i></a>

								<div id="menu-bg">

									<ul style="list-style: none;" class="collapse in" id="userMenu">

										<li class="link active"><a class="menuitem" href="#">Discovery</a></li>

										<li class="link" ><a class="menuitem" href="#">View Inventory</a></li>

										<li class="link" ><a class="menuitem" href="#">View Status</a></li>

									</ul>

								</div>

							</div>

						</div>

						<div class="span6">
						
						<ul id="nav" class="breadcrumb">

							  <li><a href="#">Services</a> <span class="divider">></span></li>

							  <li class="active">Discovery</li>

							</ul>

							<div class="well">

								<h3>Discovery</h3>

								<div class="inner">

									<form action="../DiscoveryControllerServlet" id="ip-form" method="post">
									
										<input type="radio" name="ip-type" value="range" id="ip-range-radio" class="radio-button" checked> <span id="radio-button-label">IP range</span>
			
										<input type="radio" name="ip-type" value="single" id="single-ip-radio" class="radio-button"> <span id="radio-button-label">Single IP</span>
										
										<table border="0" width="100%">
			
										<tr><td><span>Start ip Address:</span></td><td><input type="text" name="start" ></td></tr>
				
										<tr><td></td><td><span id="start-ip-error"></span></td></tr>
			
										<tr id="ip-range-box-row"><td><span id="ip-range-text-box-label">End ip Address:</span></td><td><input type="text" name="end" id="ip-range-text-box"></td></tr>
				
										<tr><td></td><td><span id="end-ip-error"></span></td></tr>
			
										<tr id="ip-submit-row"><td><input type="submit" value="" class="discover-btn"></td></tr>
			
										</table>	
								
		</form>

								</div>

							</div>

						</div>

					</div>

				</div>

			</div>

		</div>
		
		<script type='text/javascript' id="bsJs">
			$(document).ready(function() {
				$('[data-toggle=collapse]').click(function(){
					$(this).find("i").toggleClass("icon-chevron-sign-right  icon-chevron-sign-down ");
					
				});
				$('.collapse').on('show', function (e) {
					
					$('.collapse').each(function(){
					  if ($(this).hasClass('in')) {
						  $(this).collapse('toggle');
						  
					  }
					});
				  
				})
				
			});
        </script>
		
</body>
</html>
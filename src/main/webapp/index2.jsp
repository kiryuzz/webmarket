<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Varela+Round">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<style>
		body {
			font-family: 'Varela Round', sans-serif;
		}
		.form-control {
			box-shadow: none;		
			font-weight: normal;
			font-size: 13px;
		}
		.navbar {
			background: #fff;
			padding-left: 16px;
			padding-right: 16px;
			border-bottom: 1px solid #dfe3e8;
			border-radius: 0;
		}
		.navbar .navbar-brand {
			padding-left: 0;
			font-size: 20px;
			padding-right: 50px;
		}
		.navbar .navbar-brand b {
			color: #33cabb;		
		}
		.navbar a {
			color: #888;
			font-size: 15px;
		}
		.navbar .sign-up-btn {
			min-width: 110px;
			max-height: 36px;
		}
		.navbar .dropdown-menu {
			color: #999;
			font-weight: normal;
			border-radius: 1px;
			border-color: #e5e5e5;
			box-shadow: 0 2px 8px rgba(0,0,0,.05);
		}
		.navbar a, .navbar a:active {
			color: #888;
			padding: 8px 20px;
			background: transparent;
			line-height: normal;
		}
		.navbar .action-form {
			width: 280px;
			padding: 20px;
			left: auto;
			right: 0;
			font-size: 14px;
		}
		.navbar .action-form a {		
			color: #33cabb;
			padding: 0 !important;
			font-size: 14px;
		}
		.navbar .action-form .hint-text {
			text-align: center;
			margin-bottom: 15px;
			font-size: 13px;
		}
		.navbar .btn-primary, .navbar .btn-primary:active {
			color: #fff;
			background: #33cabb !important;
			border: none;
		}	
		.navbar .btn-primary:hover, .navbar .btn-primary:focus {		
			color: #fff;
			background: #31bfb1 !important;
		}
		.navbar .action-buttons .dropdown-toggle::after {
			display: none;
		}
		.form-check-label input {
			position: relative;
			top: 1px;
		}
		@media (min-width: 1200px){
			.form-inline .input-group {
				width: 300px;
				margin-left: 30px;
			}
		}
		@media (max-width: 768px){
			.navbar .dropdown-menu.action-form {
				width: 100%;
				padding: 10px 15px;
				background: transparent;
				border: none;
			}
			.navbar .form-inline {
				display: block;
			}
			.navbar .input-group {
				width: 100%;
			}
		}
	</style>
	<script>
		// Prevent dropdown menu from closing when click inside the form
		$(document).on("click", ".action-buttons .dropdown-menu", function(e){
			e.stopPropagation();
		});
	</script>
	<title>Welcome</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<%!String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
	String tagline = "Welcome to Web Market!";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>	
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
			<%
				response.setIntHeader("Refresh", 5);
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour / 12 == 0) {
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("현재 접속  시각: " + CT + "\n");
			%>
		</div>
		<hr>
	</div>	
	<%@ include file="footer.jsp"%>
</body>
</html>
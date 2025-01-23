<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Subin's Portal</title>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	background-color: #66573A;
	height: 100vh;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.main-container {
	width: 60%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	gap: 50px;
}

.headingcontainer {
	width: 50%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	gap: 2rem;
}

.nav-links {
	width: 100%;
	display: flex;
	justify-content: space-between;
}

p {
	font-size: 20px;
	text-align: center;
}
</style>

</head>

<body>
	<div class="main-container">
		<div class="headingcontainer">

			<h1 style="text-align: center;">
				Welcome to <br> Subin Portal System
			</h1>


			<div class="nav-links">
				<a href="LoginServlet">Login</a> 
				
				<a href="SignupServlet">Signup</a>
			</div>
		</div>

		<p>“My name is Subin Ratna Tuladhar, and this is my first java
			project with a Backend implementation. It includes a Login and Signup
			System where users must first signup to gain access to login portal.
			Upon Sucessgull signup, users can log in to access the restricted
			areas of the application.</p>


		<div class="tools">
			<h2>For the Development, I used:</h2>
			<ul>
				<li>HTML,CSS and JSP for the frontend.</li>
				<li>Tomcat Server for the deployment</li>
				<li>Java for Backend logic</li>
				<li>MySQL as the database managing user information.</li>


			</ul>



		</div>

		<p>This project represents my foundational step in integrating
			backend functionality with frontend design."</p>
	</div>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	background-color: #42725F;
	height: 100vh;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

#imagePreview {
	width: 100px;
	height: 100px;
	border: 2px solid #ddd;
	border-radius: 5px;
	display: flex;
	justify-content: center;
	align-items: center;
	overflow: hidden;
	background-color: #f9f9f9;
}

#imagePreview img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	/* Ensures the image fills the holder while maintaining aspect ratio */
}

form {
	width: 30%;
	display:flex;
	flex-direction:column;
	border:1px solid white;
	padding:10px;
	gap:1rem;

}
.input{
	width: 100%;
	height: 40px;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 14px;
	box-sizing: border-box;
}
.btn{
width: 100%;
	height: 40px;
	background-color: #26483B;
	color: white;
	font-size: 16px;
	font-weight: bold;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}
.btn:hover {
	background-color: #54BD95;
}
</style>
</head>
<body>
	<form action="SignupServlet" method="post" enctype="multipart/form-data">
		


		<label for="name">Name</label>
		 <input type="text" name="name" class="input" required>

		<label for="pass">Password</label>
		 <input type="password" name="pass" class="input" required>
		  <label for="repass">Re-password</label> 
		  <input type="password" name="repass" class="input" required>
		  
		  <input type="submit" value="Signup" class="btn">
		  <p>${Sucessful} ${fail}</p>
		  <p>${classerror} ${drivererror}</p>

	</form>



</body>
</html>
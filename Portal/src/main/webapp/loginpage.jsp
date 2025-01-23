<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
* {
	margin: 0;
	padding: 0;
}
body{
	background-color: #778F6A;
	height: 100vh;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

form{
	width: 30%;
	display:flex;
	flex-direction:column;
	border:1px solid white;
	padding:10px;
	gap:1rem;
}
input{
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
<form action="LoginServlet" method="post">
<h2>Welcome to Login</h2>
	
	<div class="inputholder">
	<label for="name">Name</label>
		 <input type="text" name="name" class="input" required>

		<label for="pass">Password</label>
		 <input type="password" name="pass" class="input" required>
	</div>
		
		  <p style="color:red">${incorrect}</p>
		  <input type="submit" value="Login" class="btn">

	</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome ${username}</title>

<style>
body {
	background-color: #040D12;
	height: 100vh;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	color: white;

}

#profilecontainer {
	text-align: center;
}

#profilecontainer svg {
	transition: all 0.3s ease;
	cursor: pointer; 
}

#profilecontainer svg:hover {
	fill: yellow; 
	transform: scale(1.5); 
}

.profile-para{
width:60%;
border:1px solid white;
position:relative;
left:50%;
transform:translate(-50%);
}



</style>
</head>
<body>
	<div id="profilecontainer">
		<svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-emoji-laughing-fill"
			viewBox="0 0 16 16">
  <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16M7 6.5c0 .501-.164.396-.415.235C6.42 6.629 6.218 6.5 6 6.5s-.42.13-.585.235C5.164 6.896 5 7 5 6.5 5 5.672 5.448 5 6 5s1 .672 1 1.5m5.331 3a1 1 0 0 1 0 1A5 5 0 0 1 8 13a5 5 0 0 1-4.33-2.5A1 1 0 0 1 4.535 9h6.93a1 1 0 0 1 .866.5m-1.746-2.765C10.42 6.629 10.218 6.5 10 6.5s-.42.13-.585.235C9.164 6.896 9 7 9 6.5c0-.828.448-1.5 1-1.5s1 .672 1 1.5c0 .501-.164.396-.415.235" />
</svg>

		<h1>Welcome to Profile ${username}</h1>
		
		<div class="profile-para">
		<h3> Dear <span>${username}</span></h3>
		<p>Thank you so much for logging into my system. Your support truly means the world to me.
As a beginner Java developer, this small project holds a special place in my heart.
It may be simple, but it’s a big step in my journey of learning and growing.
I’m deeply grateful for your encouragement and trust—thank you for being part of this!</p>
		</div>
		
		
		
	</div>
</body>
</html>
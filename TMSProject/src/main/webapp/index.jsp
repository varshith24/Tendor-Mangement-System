<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="index.css">
<title>Insert title here</title>
</head>
<body>
	<div class="login-box">
		<h2>Login</h2>
		<form action="LoginServlet" method="get">
			<div class="user-box">
				<input type="text" name="t1" required="">
				<label>Username</label>
			</div>
			<div class="user-box">
				<input type="password" name="t2" required="">
				<label>Password</label>
			</div>
			<div class="toggle-box">
				<input type="checkbox" name="t3" id="isAdmin">
				<label for="isAdmin"></label>
			</div>
			<div class="toggle-box">
			<p>Is Admin or Not</p>
			</div>
			
			<button id="btn" type="submit">
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				Submit
			</button>
		</form>
		<form action="RegTog" method="get">
			<button  type="submit">
				Register
			</button>
		</form>
	</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="index.css" />
  </head>
  <body>
    <div class="login-box">
		<h2>REGISTER</h2>
		<form action="RegistrationServlet" method="get">
			<div class="user-box">
				<input type="text" name="t1" required="">
				<label>Enter Email</label>
			</div>
			<div class="user-box">
				<input type="text" name="t2" required="">
				<label>Enter Username</label>
			</div>
			<div class="user-box">
				<input type="password" name="t3" required="">
				<label>Enter Password</label>
			</div>
			<div class="user-box">
				<input type="text" name="t4" required="">
				<label>Enter Phone Number</label>
			</div>
			<button id="btn" type="submit">
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				Submit
			</button>
			<a href="/TMSProject">Login</a>
		</form>
	</div>
  </body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="home.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="AddTenderForm.css" >
</head>
<body>
	<%@ page import="com.model.*"%>

  <script src="https://kit.fontawesome.com/7552b865b0.js" crossorigin="anonymous"></script>
  <!-- FontAwesome -->

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito&display=swap">
  <!-- Nunito Font -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="AddTenderForm.jsp">ADD Property</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Contact.jsp">Contact</a>
      </li>
    </ul>
    <span class="navbar-text">
	${LoginData.username}
	<i class='fa fa-user-circle fa-2xl' style='color:#184dc9'></i>
    </span>
  </div>
</nav>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tender Form</title>
  <link rel="stylesheet" href="tender-form.css">
</head>
<body>
  <div class="container">
    
    <h1>Tender Form</h1>
    <form action="AddTender" method="get">
    	
    	<label for="userid">USER ID:</label>
      <input type="text" id="userid" name="userid" value="${LoginData.username}" readonly>
      
      <label for="tenderTitle">Tender Title:</label>
      <input type="text" id="tenderTitle" name="tenderTitle" required>

	  <label for="tenderImage">Tender Image:</label>
      <input type="text" id="tenderImage" name="tenderImage" required>
	  
	
      <label for="organization">Organization:</label>
      <input type="text" id="organization" name="organization" required>
      
      <label for="closingDate">Closing Date:</label>
      <input type="date" id="closingDate" name="closingDate" required>

      <label for="description">Description:</label>
      <textarea id="description" name="description" rows="4" required></textarea>

      <label for="contactPerson">Contact Person:</label>
      <input type="text" id="contactPerson" name="contactPerson" required>

      <label for="contactEmail">Contact Email:</label>
      <input type="email" id="contactEmail" name="contactEmail" required>

      <label for="contactPhone">Contact Phone:</label>
      <input type="tel" id="contactPhone" name="contactPhone"  maxlength="10"  minlength="10" required>

      <input type="submit" value="Submit">
    </form>
  </div>
<%@include file="/footer.jsp" %>
</body>
</html>
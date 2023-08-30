<!DOCTYPE html>
<%@page import="java.util.List"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="home.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  </head>
<body>
  <%@ page import="com.model.*"%>
  <script src="https://kit.fontawesome.com/7552b865b0.js" crossorigin="anonymous"></script>
  <!-- FontAwesome -->
 	
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito&display=swap">
  <!-- Nunito Font -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class= "title-font">
  	<a class="navbar-brand" href="home.jsp">
  	<h3>TMS MANAGEMENT</h3>
  </a>
  </div>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="AddTenderForm.jsp">ADD Property <span class="sr-only">(current)</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Contact.jsp">Contact <span class="sr-only">(current)</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">LOGOUT <span class="sr-only">(current)</a>
      </li>
    </ul>
    <span class="navbar-text">
    <a class="nav-link" href="profile.jsp"><i class='fa fa-user-circle fa-2xl' style='color:#184dc9'></i> <span class="sr-only">(current)</span></a>
	
	${LoginData.username}
	
    </span>
  </div>
</nav>
<%
   ProjectManager pm = new ProjectManager();
   List<Tender> al = pm.gettingTenderData();
   session.setAttribute("cards", al);
%>

<%
   String ans = "<i class='fa fa-gavel' aria-hidden='true'></i>  &nbsp&nbsp Available Tenders :- &nbsp ";
   for (Tender x : (List<Tender>)session.getAttribute("cards")) {
       ans += "<div class='tender-card'>" +
              "<img src=" + x.getTenderimage() + " width='35px' height='35px' style='border-radius: 50%;' />" +
              "<span class='tender-title'>" + x.getTendertitle() + "</span>" +
              "- <i class='fa fa-calendar' style='font-size: 16px'></i> &nbsp&nbsp" + x.getDate() +
              "</div>";
   }
   session.setAttribute("res", ans);
%>

<div class="tender-container">
   <marquee class="img1">
       <%= session.getAttribute("res") %>
   </marquee>
</div>

<div class="context">
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://static.trip101.com/main_pics/200845/medium.jpg" class="d-block w-100 " alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="https://cdn.wallpapersafari.com/72/58/WLHYwR.jpg" class="d-block w-100" alt="..."  height="500px" >
    </div>
    <div class="carousel-item">
      <img height="500px" src="data:image/jpeg;base64,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" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  <br>
  <br>
  
	<%
		for(Tender x :(List<Tender>)session.getAttribute("cards") ){
			System.out.println(x.getTendertitle());
			%>
		<div class="card mb-3" style="max-width: 1500px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <img class="rounded float-left" src="<%= x.getTenderimage() %>" alt="..." style="width: 400px; height: 400px; padding: 0.7em">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h4 class="card-title"><%= x.getTendertitle() %></h4>
        <p class="card-text"><%= x.getDescription() %></p>
        <p class="card-text"><small class="text-muted">The Tender Date is : <%= x.getDate() %></small></p>
        <p class="card-text"><small class="text-muted">For  More Imformation Contact : <%= x.getContactemail() %></small></p>
      </div>
    </div>
  </div>
</div>
	<%} %>
    </div>
    <!-- Site footer -->
    <%@include file="/footer.jsp" %>
</body>
</html>

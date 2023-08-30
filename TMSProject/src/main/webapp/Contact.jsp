<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Contact.css">
<link rel="stylesheet" href="home.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  <style type="text/css" >
  	nav.nav {
  background-color: var(--dark);
  width: 100%;
  height: 50px;
  box-shadow: 5px 5px 8px #18181811;
  display: flex;
  justify-content: space-between;
  color: #fff;
}

.nav-items {
  display: flex;
  height: 100%;
  justify-content: center;
  align-items: center;
  gap: 30px;
  margin-left: 20px;
}

.nav-item {
  cursor: pointer;
}

.nav-item:hover {
  color: #2c333b;
}
  </style>
</head>
<body>
	<div>
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
    </span>
  </div>
</nav>
	<div class="responsive-container-block outer-container">
  <div class="responsive-container-block inner-container">
    <div class="responsive-cell-block wk-tab-12 wk-mobile-12 wk-desk-4 wk-ipadp-4 headings-container">
      <p class="text-blk heading-text">
        Meet our team
      </p>
      <p class="text-blk sub-heading-text">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fringilla et sagittis,
        vestibulum risus lacus sit.
      </p>
    </div>
    <div class="responsive-cell-block wk-desk-8 wk-ipadp-8 wk-tab-12 wk-mobile-12 team-members-container">
      <div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-mobile-12 wk-tab-12 card-container">
        <div class="card">
          <img class="card-img" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/ft12.svg">
          <p class="text-blk name">
            Chavalam Varshith
          </p>
          <p class="text-blk position">
            CEO
          </p>
        </div>
      </div>
      <div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-mobile-12 wk-tab-12 card-container">
        <div class="card">
          <img class="card-img" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/ft13.svg">
          <p class="text-blk name">
            Naveen
          </p>
          <p class="text-blk position">
            UI/UX 
          </p>
        </div>
      </div>
      <div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-mobile-12 wk-tab-12 card-container">
        <div class="card">
          <img class="card-img" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/ft13.svg">
          <p class="text-blk name">
          Vivek
          </p>
          <p class="text-blk position">
            DB Manager
          </p>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</body>
</html>
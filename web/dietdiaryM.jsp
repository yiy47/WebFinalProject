<%-- 
    Document   : dietdiary
    Created on : Dec 10, 2016, 2:28:09 PM
    Author     : Rachel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diet Diary</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
        <style>
        
                    .navbar-inverse{
                   background-color: #333;
                   color: #fff;
                   z-index: 10;
                   overflow: visible;
            }


.navbar-inverse .container-fluid .navbar-header a:hover{background-color: #00C0C0;}
.navbar-inverse .container-fluid .navbar-right a:hover{background-color: #00C0C0;}

.dropdown{
    position: relative;
    display: inline-block;
    overflow: visible;
}

.dropdown-menu a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}
    </style>
    </head>
    <body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
        </button>
        <a class="navbar-brand" href="userpage.jsp">Fitness Control</a> 
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li> <a href="Diet.jsp"> DIET </a></li>
        <li> <a href="Exercise.jsp">EXERCISE</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown">My Account <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="displayProfile">My Profile</a></li>
            <li><a href="dietdiaryM.jsp">Record Diet</a></li>
            <li><a href="listDietHistory">Diet History</a></li>
            <li><a href="displayFigure">Figure Data</a></li>
            <li><a href="logout.jsp">Log out</a></li>
          </ul>
        </li>
      </ul>      
    </div>
  </div>
</nav> 
    <div class="container" style="padding: 5%;">
        <h1>How was your diet today?</h1>
        <p>Use the nutrition chart below for reference.</p>
        </br>
        <form action="insertDietEntry" method="POST">
            Calories: <input type="text" name="cal" placeholder="2500">kcal</br></br>
            Protein: <input type="text" name="protein" placeholder="55">g</br></br>
            Carbs: <input type="text" name="carbs" placeholder="300">g</br></br>
            Sugar: <input type="text" name="sugar" placeholder="120">g</br></br>
            Fat: <input type="text" name="fat" placeholder="95">g</br></br>
            Saturates: <input type="text" name="sat" placeholder="30">g</br></br>
            Salt: <input type="text" name="salt" placeholder="6">g</br></br>
            <input type="submit" value="Submit">
        </form>
        <div style="width:100%;"><img style="width:100%; height: auto;" src="Foodchart.jpg"/></div>
    </div>
    </body>
</html>

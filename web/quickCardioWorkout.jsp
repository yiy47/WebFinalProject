<%-- 
    Document   : quickCardioWorkout
    Created on : Dec 12, 2016, 4:56:27 PM
    Author     : Rachel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quick Cardio Workout</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="articleEstyle.css">
        <style>
            .navbar-inverse .container-fluid .navbar-header a:hover{background-color: #00C0C0;}
            .navbar-inverse .container-fluid .navbar-right a:hover{background-color: #00C0C0;}

        </style>        
    </head>
    <body>
    <%if(session.getAttribute("email")==null){ %>
        <nav class="navbar navbar-inverse">
              <div class="container-fluid">
                   <div class="navbar-header">
                        <a class="navbar-brand" href="index.jsp">Fitness Control</a>
                   </div>
                   <ul class="nav navbar-nav navbar-right">
                       <li> <a href="Diet.jsp"> DIET </a></li>
                       <li> <a href="Exercise.jsp">EXERCISE</a></li>                       
                       <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Log In</a></li>
                   </ul>
             </div>
        </nav>             
    <%} else {%>
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
    <%}%>        
        <div class="container">
            <h1>Quick Sweat Cardio Workout to Lose Weight & Burn Belly Fat Fast</h1>
            <p>Don't have a lot of time to workout? Try this workout to burn fat and lose weight fast!</p>
            <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/X1TuhAn6C-g?rel=0" allowfullscreen></iframe>
            </div>
            <p><i>Video source: FitnessBlender (https://www.youtube.com/watch?v=X1TuhAn6C-g)</i></p>
        </div>
    </body>
</html>

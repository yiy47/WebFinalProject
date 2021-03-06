<%-- 
    Document   : Exercise
    Created on : Dec 12, 2016, 6:16:46 PM
    Author     : Rachel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercise</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="feedStyle.css">
        <script src="feedScript.js"></script>
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
            <h1>Exercise Feed:</h1>
            </br>
            <div class="btn-group">
              <button id="dropdownText" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">All <span class="caret"></span></button>
              <ul class="dropdown-menu">
                <li id="All"  class="active"><a href="#">All</a></li>
                <li id="Videos"><a href="#">Videos</a></li>
                <li id="Articles"><a href="#">Articles</a></li>
             </ul>
            </div>
            </br>
              <div class="container">
                <a href="quickCardioWorkout.jsp"><div class="thumbnail feed video"><img class="img-responsive" src="http://img.youtube.com/vi/X1TuhAn6C-g/hqdefault.jpg" /><div class="caption"><p>Quick Cardio Workout Video</p></div></div></a>
                <a href="8waysToBurnFat.jsp"><div class="thumbnail feed article"><img class="img-responsive" src="http://images.fitnessmagazine.mdpcdn.com/sites/fitnessmagazine.com/files/styles/channel_masonry/public/101477228.jpg?itok=ea66kKTe" /><div class="caption"><p>8 Ways to Burn More Fat, Faster</p></div></div></a>
                <a href="10minAbsWorkout.jsp"><div class="thumbnail feed video"><img class="img-responsive" src="http://img.youtube.com/vi/1919eTCoESo/hqdefault.jpg" /><div class="caption"><p>10 Min Abs Workout</p></div></div></a>
                <a href="loseBellyFat.jsp"><div class="thumbnail feed article"><img class="img-responsive" src="http://images.fitnessmagazine.mdpcdn.com/sites/fitnessmagazine.com/files/styles/story_detail/public/story/101689880_L_w_0.jpg?itok=obpSZh5Z" /><div class="caption"><p>What You Need to Know to Lose Belly Fat</p></div></div></a>
              </div>
        </div>
        
        <%
            /*if (session != null ){
                if (session.getAttribute("email") != null){
                    response.sendRedirect("Diet.jsp");
                } else {
                    response.sendRedirect("userpage.jsp");
                }
            }=session.getAttribute("email")
            
        }*/%>
         
        


    </body>
</html>

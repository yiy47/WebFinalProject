<%-- 
    Document   : userpage
    Created on : Dec 11, 2016, 1:14:16 PM
    Author     : yaoyi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

            body{
                background: url('http://imgur.com/NYlqX0n.jpg');
                background-size: 100% 100%;
                background-repeat: no-repeat;
                background-attachment: fixed;
            }
            
            .headline{
                position: absolute;
                z-index: 100;
                left: 20%;
                top:100px;
                color: white;
                font-size: 10px;
                font-weight: bold;
            }
            
            @media only screen and (min-width: 500px ){
                .headline{
                    font-size: 30px;
                }
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
        <a class="navbar-brand" href="#">Fitness Control</a> 
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
    <div class="headline">Fitness Control aims to help you keep fit. Enjoy your lives!</div>
</body>
</html>

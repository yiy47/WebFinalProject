<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fitness Control</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="script.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="FCstyle.css">
    </head>

    <body>
        <%session.setAttribute("email",null);session.invalidate();%>
        <nav class="navbar navbar-inverse">
          <div class="container-fluid">
            <div class="navbar-header">
              <a class="navbar-brand" href="#">Fitness Control</a>
            </div>

            <ul class="nav navbar-nav navbar-right">
              <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Log In</a></li>
            </ul>
          </div>
        </nav> 
        <div class="container-fluid choice">
            <div class="top-page-div" id="top"><span><a href="Exercise.jsp" type="button" class="top-page-button" >EXERCISE</a></span></div>
            <div class="top-page-div" id="bottom"><span><a  href="Diet.jsp" type="button" class="top-page-button">DIET</a></span></div>
        </div>
    </body>
</html>

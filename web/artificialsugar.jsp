<%-- 
    Document   : artificialsugar
    Created on : Dec 12, 2016, 4:17:34 PM
    Author     : Rachel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Are Sugar Substitutes Worse Than Real Sugar?</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="articleDstyle.css">
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
            <h1>Are Sugar Substitutes Worse Than Real Sugar?</h1>
            <p>Sugar has been labeled the bad guy for many years, but new research suggests that low-calorie, artificial sweeteners could be even worse.</p>
            </br>
            <p>Artificial sweeteners have taken over at the supermarket and the coffee shop, turning up in everything from sodas to ice cream and yogurt. These supposed "diet-friendly" options emerged to give consumers low-calorie alternatives to real sugar.</p>
            </br>
            <p>But a recent study from York University in Toronto suggests that sugar substitutes, particularly aspartame, could lead to an increased risk of diabetes if you're overweight. Researchers surveyed more than 2,800 American adults and asked them to recall their diet for the past 24 hours. Based on their eating habits, they were categorized and placed into groups as either consumers of artificial sugars (aspartame or saccharin) or real sugar (glucose and fructose).</p>
            </br>
            <p>The researchers then looked at how well the participants' bodies were able to break down the different kinds of sugar. They found that the digestion of aspartame impaired the body's ability to regulate glucose levels in obese individuals, but not in those who were considered lean. The study authors did not find the same negative side effects in people (of any weight) who consumed regular sugar, saying that this may support "the notion that it is calories, as opposed to sugar, that may be leading to obesity and increased diabetes risk."</p>
            </br>
            <h3>What are artificial sweeteners anyway? Are you eating them?</h3>
            <p>Artificial sweeteners are chemically made sugar substitutes. They tend to taste sweeter than natural sugars. According to Mayo Clinic, artificial sweeteners include: acesulfame potassium (Sunett, Sweet One), aspartame (Equal, NutraSweet), saccharin (Sugar Twin, Sweet'N Low) and sucralose (Splenda). (Is Using Splenda a Danger to Your Health?) Novel sweeteners, which are sweeteners made from a combination of various kinds of sweeteners, include stevia extracts (Pure Via, Truvia), Naturlose, and Trehalose.</p>
            </br>
            <p>And in case you were wondering, natural sugar comes in many forms, such as agave nectar, date sugar, fruit juice concentrate, honey, maple syrup, and molasses.</p>
            </br>
            <h3>Which kind of sugar is the best choice?</h3>
            <p>With all the options available—I mean, just look at the selection above—it can be incredibly confusing when you're shopping for a sweetener. In general, natural sugar is a good choice because your body will not always be able to recognize and metabolize synthetic or artificial sweeteners. Additionally, these sugar alternatives offer no value other than acting as a lower-calorie option for those who are watching their weight. So, bottom line: Whatever type of sugar you decide to sprinkle in your coffee is up to you, just use it sparingly. (Knowledge is power. Get Sweetener Savvy: The Need-to-Know Facts.)</p>
            </br>
            <p><i>Article source: http://www.fitnessmagazine.com/recipes/healthy-eating/nutrition/are-sugar-substitutes-worse-than-real-sugar/</i></p>
        </div>
    </body>
</html>

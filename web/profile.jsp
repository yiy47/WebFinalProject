<%-- 
    Document   : profile
    Created on : Dec 10, 2016, 4:39:03 PM
    Author     : yaoyi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Successful!</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>         
        <style>




.navbar-inverse{
    background-color: #333;
    color: #fff;
    z-index: 10;
    overflow: hidden;
}


.navbar-inverse .container-fluid .navbar-header a:hover{background-color: #00C0C0;}
.navbar-inverse .container-fluid .navbar-right a:hover{background-color: #00C0C0;}

*, *:before, *:after{
    box-sizing: border-box;
}

html{
    overflow-y: scroll;
}

body{
  background: #c1bdba;
  font-family: 'Titillium Web', sans-serif;    
}

.form{
    background: rgba(19,35,47,0.9);
    padding: 40px;
    max-width: 600px;
    margin: 40px auto;
    border-radius: 4px;
    box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
}

h1{
  text-align: center;
  color: #ffffff;
  font-weight: 300;
  margin: 0 0 40px;    
}



label .req {
  margin: 2px;
  color: #00C0C0;
}

label.highlight{
  color: #ffffff;   
}

textarea:focus{
  outline: 0;
  border-color: #00C0C0;   
}

textarea{
  border: 2px solid #a0b3b0;
  resize: vertical;   
}

.field-wrap {
  position: relative;
  margin-bottom: 40px;
}

.top-row:after {
  content: "";
  display: table;
  clear: both;
}
.top-row > div {
  float: left;
  width: 48%;
  margin-right: 4%;
}
.top-row > div:last-child {
  margin: 0;
}


.button {
  border: 0;
  outline: none;
  border-radius: 0;
  padding: 15px 0;
  font-size: 2rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: .1em;
  background: #00C0C0;
  color: #ffffff;
  -webkit-transition: all 0.5s ease;
  transition: all 0.5s ease;
  -webkit-appearance: none;
}
.button:hover, .button:focus {
  background: #00C0C0;
}

.button-block {
  display: block;
  width: 100%;
}

label{

    left: 26px;
    color: rgba(255, 255, 255, 0.5);
    font-size: 22px;
    -webkit-transform: translateY(6px);
    transform: translateY(6px);
}
p{
    left: 26px;
    color:rgba(255, 255, 255, 0.5);
    font-size: 22px;
    font-weight: bold;
}
p1{
    color:#00C0C0;
}
label1,label2{
    left: 13px;
    color:rgba(255, 255, 255, 0.5);
    font-size: 22px;
    
}

</style>
</head>


<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">Fitness Control</a>
    </div>

    <ul class="nav navbar-nav navbar-right">
      <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Log In</a></li>
    </ul>
  </div>
</nav>  
        
        <div class="form">
            <h1>Welcome to Fitness Control</h1>
            <form action="profileServlet" method="post">
                
                <div class="field-wrap">                   
                    <label>
                         First Name <span class="req">*</span>
                    </label>
                    <input type="text" name="firstname" required autocomplete="off"/>
                </div>
                <div class="field-wrap">                   
                    <label>
                         Last Name <span class="req">*</span>
                    </label>
                    <input type="text" name="lastname" required autocomplete="off"/>
                </div> 
                <p>Gender <p1>*</p1>
                <label1 id="gender" class="radio-inline">
                    <input type="radio" name="gender" value="female">Female
                </label1>
                <label2 id="gender" class="radio-inline">
                    <input type="radio" name="gender" value="male">Male
                </label2>  
                </p> 
                </br>
                <label for="birthdate"> Date of Birth <span class="req">*</span></label>
                <input type="text" name="byear" placeholder="YYYY" maxlength="4" size="5">-<input type="text" name="bmonth" placeholder="MM" maxlength="2" size="3">-<input type="text" name="bday" placeholder="DD" maxlength="2" size="3">
                </br></br>
                <label for="height"> Height <span class="req">*</span></label>
                <input type="text" name="height" placeholder="feet" maxlength="5" size="5"> Weight
                <label for="weight"> Weight <span class="req">*</span></label>
                <input type="text" name="weight" placeholder="pound" maxlength="5" size="5"> Height 
                </br></br>
                <button class="button button-block"/>Submit</buttion>
            </form>
        </div>
  
  
    </body>
</html>

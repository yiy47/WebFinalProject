<%-- 
    Document   : 10healthiestfoods
    Created on : Dec 12, 2016, 3:29:58 PM
    Author     : Rachel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>10 Healthiest Foods</title>
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
            <h1>The 10 Healthiest Foods on the Planet</h1>
            <p>These 10 superfoods are proven, expert-beloved disease fighters and energy boosters. Add them to your meals and get on the fast track to a super-healthy body.</p>
            </br>
            <h2>Healthy Food #1: Lemons</h2>
            <h3>Why They're Healthy:</h3>
            <p>— Just one lemon has more than 100 percent of your daily intake of vitamin C, which may help increase "good" HDL cholesterol levels and strengthen bones.</br>— Citrus flavonoids found in lemons may help inhibit the growth of cancer cells and act as an anti-inflammatory.</p>
            <h3>Quick Tip:</h3>
            <p>Add a slice of lemon to your green tea. One study found that citrus increases your body's ability to absorb the antioxidants in the tea by about 80 percent.</p>
            </br>
            <h2>Healthy Food #2: Broccoli</h2>
            <h3>Why They're Healthy:</h3>
            <p>— One medium stalk of broccoli contains more than 100 percent of your daily vitamin K requirement and almost 200 percent of your recommended daily dose of vitamin C — two essential bone-building nutrients.</br>— The same serving also helps stave off numerous cancers.</p>
            <h3>Quick Tip:</h3>
            <p>Zap it! Preserve up to 90 percent of broccoli's vitamin C by microwaving. (Steaming or boiling holds on to just 66 percent of the nutrient.)</p>
            </br>
            <h2>Healthy Food #3: Dark Chocolate</h2>
            <h3>Why They're Healthy:</h3>
            <p>— Just one-fourth of an ounce daily can reduce blood pressure in otherwise healthy individuals.
                </br>— Cocoa powder is rich in flavonoids, antioxidants shown to reduce "bad" LDL cholesterol and increase "good" HDL levels.</p>
            <h3>Quick Tip:</h3>
            <p>A dark chocolate bar contains about 53.5 milligrams of flavonoids; a milk chocolate bar has fewer than 14.</p>
            </br>
            <h2>Healthy Food #4: Potatoes</h2>
            <h3>Why They're Healthy:</h3>
            <p>— One red potato contains 66 micrograms of cell-building folate — about the same amount found in one cup of spinach or broccoli.
            </br>— One sweet potato has almost eight times the amount of cancer-fighting and immune-boosting vitamin A you need daily.</p>
            <h3>Quick Tip:</h3>
            <p>Let your potato cool before eating. Research shows that doing so can help you burn close to 25 percent more fat after a meal, thanks to a fat-resistant starch.</p>
            </br>
            <h2>Healthy Food #5: Salmon</h2>
            <h3>Why They're Healthy:</h3>
            <p>— A great source of omega-3 fatty acids, which have been linked to a reduced risk of depression, heart disease, and cancer.</br>— A 3-ounce serving contains almost 50 percent of your daily dose of niacin, which may protect against Alzheimer's disease and memory loss.</p>
            <h3>Quick Tip:</h3>
            <p>Opt for wild over farm-raised, which contains 16 times as much toxic polychlorinated biphenyl (PCB) as wild salmon.</p>
            </br>
            <h2>Healthy Food #6: Walnuts</h2>
            <h3>Why They're Healthy:</h3>
            <p>— Contain the most omega-3 fatty acids, which may help reduce cholesterol, of all nuts.</br>— Omega-3s have been shown to improve mood and fight cancer; they may protect against sun damage, too (but don't skip the SPF!).</p>
            <h3>Quick Tip:</h3>
            <p>Eat a few for dessert: The antioxidant melatonin, found in walnuts, helps to regulate sleep.</p>
            </br>
            <h2>Healthy Food #7: Avacados</h2>
            <h3>Why They're Healthy:</h3>
            <p>— Rich in healthy, satisfying fats proven in one study to lower cholesterol by about 22 percent.</br>— One has more than half the fiber and 40 percent of the folate you need daily, which may reduce your risk of heart disease.</p>
            <h3>Quick Tip:</h3>
            <p>Adding it to your salad can increase the absorption of key nutrients like beta-carotene by three to five times compared with salads without this superfood.</p>
            </br>
            <h2>Healthy Food #8: Garlic</h2>
            <h3>Why They're Healthy:</h3>
            <p>— Garlic is a powerful disease fighter that can inhibit the growth of bacteria, including E. coli.</br>— Allicin, a compound found in garlic, works as a potent anti-inflammatory and has been shown to help lower cholesterol and blood-pressure levels.</p>
            <h3>Quick Tip:</h3>
            <p>Crushed fresh garlic releases the most allicin. Just don't overcook; garlic exposed to high heat for more than 10 minutes loses important nutrients.</p>
            </br>
            <h2>Healthy Food #9: Spinach</h2>
            <h3>Why They're Healthy:</h3>
            <p>— Spinach contains lutein and zeaxanthin, two immune-boosting antioxidants important for eye health.</br>— Recent research found that among cancer-fighting fruits and veggies, spinach is one of the most effective.</p>
            <h3>Quick Tip:</h3>
            <p>Spinach is a healthy — and flavorless — addition to any smoothie. You won't taste it, we promise! Try blending 1 cup spinach, 1 cup grated carrots, 1 banana, 1 cup apple juice, and ice.</p>
            </br>
            <h2>Healthy Food #10: Beans</h2>
            <h3>Why They're Healthy:</h3>
            <p>— Eating a serving of legumes (beans, peas, and lentils) four times a week can lower your risk of heart disease by 22 percent.</br>— That same habit may also reduce your risk of breast cancer.</p>
            <h3>Quick Tip:</h3>
            <p>The darker the bean, the more antioxidants it contains. One study found that black bean hulls contain 40 times the amount of antioxidants found in white bean hulls.</p>
            </br>
            <p><i>Article source: http://www.fitnessmagazine.com/recipes/healthy-eating/superfoods/the-10-healthiest-foods-on-the-planet/</i></p>
        </div>
    </body>
</html>

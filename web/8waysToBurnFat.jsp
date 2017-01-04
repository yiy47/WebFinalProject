<%-- 
    Document   : 8waysToBurnFat
    Created on : Dec 12, 2016, 6:01:58 PM
    Author     : Rachel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>8 Ways to Burn More Fat</title>
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
            <h1>8 Ways to Burn More Fat, Faster</h1>
            <p>News flash: You don't have to overhaul your life to work off mega calories. Here are our eight simple rules for squeezing the most out of your everyday routine to score the silhouette you've been sweating for.</p>
            </br>
            <p><i>By Caroline Hwang</i></p>
            </br>
            <h2>Rule #1: Be an early bird to get the workout.</h2>
            <p>Lace up first thing and you'll increase your odds of exercising today threefold. A study of 500 people at the Mollen Clinic, a preventive medicine and wellness center in Scottsdale, Arizona, found that 75 percent of those who worked out in the morning did so regularly, compared with just half the afternoon exercisers and a quarter of the post-work crowd. "At the beginning of the day, you have the fewest excuses for skipping exercise," says clinic founder Arthur Mollen, DO. Not waking up early enough, of course, is the main one. "Limit using the snooze button to only five minutes so that you don't fall into a deep sleep again," Dr. Mollen advises. Bonus! You'll go to work feeling focused: A recent study at the University of Illinois at Urbana-Champaign found that 20 minutes of moderate aerobic exercise improved concentration, reading comprehension, and cognitive function.</p>
            </br>
            <h2>Rule #2: Hit the metal before the pedal.</h2>
            <p>Instead of going from zero to 60 to sweat off the calories, consider this: Doing a quick sculpting routine pre-cardio could increase the amount of fat you melt. Exercisers in a study at the University of Tokyo who biked within 20 minutes of lifting weights tapped more of their fat stores than those who rested longer or didn't tone at all.</p>
            </br>
            <p>The firm-then-burn order is also good for your heart: Arteries stiffen during resistance training, increasing blood pressure, but a cardio chaser such as a 20-minute run counteracts these effects and expedites your arteries' return to normal, explains Rohit Arora, MD, chairman of cardiology at the Chicago Medical School. Plus, strength training "takes coordination and good technique, so you get more out of it if you come to it fresh," says Kent Adams, PhD, director of the Exercise Physiology Lab at California State University, Monterey Bay. "Meanwhile, cardio is a rhythmic, low-skill activity that's the easier of the two to do in a fatigued state," Adams says.</p>
            </br>
            <h2>Rule #3: Push your pace, rev your metabolism.</h2>
            <p>Finished toning and ready to get sweaty? Gun it a bit for a bigger afterburn. "High-intensity exercise increases the release of growth hormones, which mobilize fat to be used as fuel, plus it causes your metabolism to stay elevated about 10 to 15 percent above its baseline, so you're burning more fat for several hours post-workout," says Arthur Weltman, PhD, director of the Exercise Physiology Laboratory at the University of Virginia in Charlottesville. In other words, if you worked off 300 calories during your session, you'll get a bonus burn of about 45 calories even after you've toweled off.</p>
            </br>
            <p>To net the effect, stick to a speed you consider challenging: In a 16-week study that Weltman conducted with obese women, those who worked out at what they felt was high intensity (a brisk walk or jog in most cases) three days a week and at low intensity for two whittled an inch and a half more from their waists than the low-intensity-only group. Or try alternating between sprinting (racewalking, pedaling fast, swimming at top speed) for one minute and slowing down enough to recover for the next minute.</p>
            </br>
            <h2>Rule #4: Give up your seat to trim your bottom line.</h2>
            <p>Even regular exercisers could benefit from extra toning of their tush, the largest muscle group in the body, which dozes all day at your desk job. "When you're walking or running, it's your hamstrings, hip flexors, and calf muscles that get the most work," says FITNESS advisory board member Vonda Wright, MD, an orthopedic surgeon at the University of Pittsburgh Medical Center. "Unless you're going uphill, your glutes don't play a major role." The good news? If you bailed on doing those butt-firming squats during your workout, you can easily sneak them in when your cube mate isn't looking. Stand up from your chair, feet shoulder-width apart. Lower your bottom to the seat as though you're going to sit, touch down, and then spring up, squeezing your glutes as you straighten. Do three sets of 10 to 15 reps two or even three times throughout the day.</p>
            </br>
            <h2>Rule #5: Take a power walk to beat a midday slump.</h2>
            <p>Call it the 20-20 rule: As little as 20 minutes of low-intensity aerobic activity such as walking can give you a 20 percent surge in energy, research at the University of Georgia in Athens finds. "It's paradoxical: Many people assume that they'll get tired from exercise. But the opposite actually happens," says study author Patrick O'Connor, PhD, a professor of kinesiology. "We're not certain what the biological mechanism is," he says, "but indirect evidence suggests that brain chemicals such as dopamine and serotonin are altered and cause the improved energy." Besides, that quick recharge just burned about 75 calories. Sure beats adding 250 spike-then-slump calories' worth of Skittles.</p>
            </br>
            <h2>Rule #6: Do the two-step.</h2>
            <p>When you opt for the stairs, go at them two at a time — as long as you're not wearing heels. The quick bursts of power activate your legs' fast-twitch muscle fibers, which burn more calories than slow-twitch fibers. Plus, you'll be using a part of your muscles that commonly doesn't get enough action. "Fast muscle cells are designed so you can jump far, kick hard, punch fast — moves that you call on less and less in modern society," says Scott Mazzetti, PhD, a professor of exercise science at Salisbury University in Maryland. "But unfortunately it's a use-them-or-lose-them situation, so it's good to activate them regularly."</p>
            </br>
            <h2>Rule #7: Go like Gumby.</h2>
            <p>Consistent stretching significantly decreases muscle soreness, according to a study at the Norwegian Knowledge Centre for Health Services in Oslo. Skipped your stretches postexercise? Wind down with this 17-minute allover loosener from Jennifer Huberty, PhD, an exercise physiologist at the University of Nebraska at Omaha.</p>
            </br>
            <ul>
                <li>Warm up first with 5 minutes of brisk high-knee marching.</li>
                <li>Toe-reach stretch (targets hamstrings, which remain shortened all day as you're seated): Sit on the floor with your left leg straight in front of you, knee slightly bent, right leg bent out to the side and resting on the floor. Reach for your toes without bouncing and hold for 30 seconds; relax. Do 3 stretches, then switch legs and repeat.</li>
                <li>Hip-flexor stretch (targets hips, which also are tight in desk jockeys): Lie faceup on the floor with your left leg bent, left foot flat, and bend your right knee out to the side so your right ankle is crossed over and resting on the lower left thigh. Grasp your left thigh with both hands and pull it toward you until you feel a comfortable stretch in your right hip, glutes, and outer thigh. Hold for 30 seconds; switch legs and repeat. Do 3 stretches per side.</li>
                <li>Side stretch (targets upper back and waistline): Stand with feet shoulder-width apart. Raise arms overhead and interlock fingers with palms facing up. Keeping your middle centered, hinge at the waist to the right; hold for 30 seconds. Return to center and reach up; hold for 30 seconds.</li>
                <li>Switch sides; repeat. Do 3 stretches on each side.</li>
            </ul>
            </br>
            <h2>Rule #8: Set out your sneakers.</h2>
            <p>A recent FITNESS poll found that sneakers — with sports bras being a close second — are the piece of gear that is forgotten most often, foiling women's workout plans. Clear that obstacle by, well, making them an obstacle in front of the door you exit in the a.m., suggests Diane Klein, PhD, chair of exercise and sports sciences at Tennessee Wesleyan College in Athens. "Seeing them will remind you that you planned to exercise," Klein says. For motivation to move, kicks are worth a thousand words.</p>
            </br>
            <p><i>http://www.fitnessmagazine.com/workout/lose-weight/burn-fat/8-ways-to-burn-more-fat/</i></p>
        </div>
    </body>
</html>

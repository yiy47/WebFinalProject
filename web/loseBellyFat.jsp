<%-- 
    Document   : loseBellyFat
    Created on : Dec 12, 2016, 5:24:56 PM
    Author     : Rachel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>What You Need to Know to Lose Belly Fat</title>
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
             <h1>What You Need to Know to Lose Belly Fat</h1>
             <p><i>By Stephanie Goldoff</i></p>
             </br>
             <h2>How to Lose Belly Fat</h2>
             <p>The first time it happened I was in my early twenties, straphanging in a crowded New York City subway car on my way to work. I was wearing a slim-fitting T-shirt dress, one that for reasons that will soon become horrifyingly clear, I subsequently used to scrub out the litter box and then tossed. The seated woman I was standing in front of met my eyes and smiled. Then she stood up. I smiled back and stepped to the side so she could make her way to the door. She stood right next to me.</p>
             </br>
             <p>"Would you like to sit?" she asked kindly. "I remember how tired I was during my pregnancy. You look like you're into your second trimester; it gets easier."
                 </p>
             </br>
             <p>If I had been pregnant, her act of generosity would probably have sent me into early labor right there on the F train.</p>
             </br>
             <p>But I wasn't. (Even so, I took the seat.)</p>
             </br>
             <p>Once in a while I'm still offered a seat on the train, thanks to a belly that seems to always enter a room a split second before the rest of me does.</p>
             </br>
             <h2>Tummy Trouble</h2>
             <p>Every woman's got her own hang-ups about some body flaw, but flabby abs seem to be a universal sore spot. In a recent FITNESS poll, they ranked number one on the list of trouble zones women wanted fixed. Not only has my apple-shaped middle been a preoccupation of mine since I was a tween, it's also been the subject of articles I've written (like this one) and the object of literally hundreds of attempts on my part to accept and/or flatten it. It was only after having twins that I pretty much resigned myself to the fact that my belly was jelly for good.</p>
             </br>
             <p>So when my editor at FITNESS read on my blog that I thought my abs were permanently "stretched out" and I'd abandoned the abs DVDs she'd given me, she asked if I wanted to take a more scientific approach. I thought, sure. Lord knows, endless crunches haven't gotten me far. She set me up with an appointment at the renowned Women's Sports Medicine Center at the Hospital for Special Surgery in New York City, where I would get an ultrasound and find out what's really going on with my middle.</p>
             </br>
             <p>I was all over the idea of getting a scan. I strongly suspected I had what many women who have been pregnant have, diastasis recti, or separated abdominal muscles. That wouldn't explain why I've always had a pooch, but it could partially explain why I had one now. "Diastasis recti occurs when the abdominal muscles separate along the midline because of an enlarging uterus," says Virginia Lupo, MD, chair of the department of obstetrics and gynecology at Hennepin County Medical Center in Minneapolis. "It's unrelated to whether or not the muscles are strong." That means it makes no difference if your abs are made of steel or mush; the chance that they'll pull apart depends on the strength of the connective tissue that fuses them. In a study of women not long after they had given birth, 68 percent had the condition above their navel and 32 percent below. (Deep breath: Most women's abs will move back together again naturally after a while even if we don't rush to Pilates class the minute we get the okay to exercise.) The more pregnancies a woman has had, the more likely she is to have diastasis recti. I've had only one pregnancy, but it was a double, so the odds were good that this was part of my problem.</p>
             </br>
             <h2>What's Your Belly Type?</h2>
             <p>Let's get one thing straight: Gisele Bundchen and I — and you, for that matter — have more or less the same ab muscles. The main thing that sets us apart, besides those Victoria's Secret catalog covers, is the amount of fat we pack on around them. Apple shapes, like me, are genetically predisposed to carry extra pudge around the mid?section rather than in the butt, hips, and thighs, as do pears — not that we get to pick. If we could, we'd all choose a third type: Gisele's seemingly fat-free physique. (There's more to how your middle looks, including long-waistedness and wide hip bones, but we're talking fat and muscles now.)</p>
             </br>
             <p>Flip open an anatomy book and you can see what would be behind a six-pack if you had one. Below the skin and any underlying subcutaneous fat, you get to the muscles; the top one that runs down the front is the rectus abdominis. Because it's the showy, six-pack muscle, closest to the skin's surface, you may think that the rectus is the key to how flat your belly looks, but that's only one layer of the onion. The internal and external obliques run up the sides and not only give you those nice ripples but also hold in your waist a bit; the transversus abdominis is a deeper muscle that encircles and cinches your center like an obi. All those muscles figure in how your abs look (we'll get into how to work them later). Then you have connective tissue, the fascia, which holds everything together.</p>
             </br>
             <p>Research has focused on two types of ab fat: The subcutaneous fat previously mentioned is the rolly squish on top of your rib cage and waist that you can grab and that vanishes when you lose weight. Visceral fat, which accumulates around your organs, is associated with all kinds of metabolic problems that can increase your risk of diabetes and heart disease. According to a Canadian study, some of us are more genetically prone to visceral fat, which can "push the abdominal muscles outward," says Thomas Nesser, PhD, associate professor of exercise science at Indiana State University in Terra Haute, giving you that rounded look. As for me, I am at my thinnest these days — which, while not skinny, is pretty thin — but I still have a few rolls of the relatively benign sort of fat. I wouldn't know if I had the other kind until the ultrasound scan.</p>
             </br>
             <h2>How to Get Flat Abs</h2>
             <p>The biggest reason people who aren't overweight don't have tight tummies is that their ab muscles are weak, pure and simple, Nesser says. In other words, ab muscles in couch potatoes are like a girdle made of wimpy fabric instead of industrial-strength fibers. But what about women who, like me, are seven years postbaby and the Queen of Crunches? Turns out I tend to do a lot for my rectus abdominis but largely neglect my obliques and deeper transversus abdominis.</p>
             </br>
             <p>To pull in your mid?section, you also have to target these overlooked areas and even your lower back, Nesser reminds me, and none of the above are taxed during your typical crunch. That crunch time is better spent doing the exercises that leave no muscle in your middle untoned.</p>
             </br>
             <h2>Can These Abs Be Saved?</h2>
             <p>As I lay on an exam table at the Women's Sports Medicine Center, I asked Marci Goolsby, MD, the lovely flat-ab'd doctor I got to visit, about diastasis recti. She had me do a half crunch on the table and pressed with two fingers just below my sternum. "I don't see anything," she said, explaining that when someone's rectus abdominis muscles are very separated, they pop out like an upside-down V and the space between them is often visible. "We'll know more at your ultrasound." (When I told Dr. Goolsby that my comment about having "stretched out" abs landed me here, she countered, "Ab muscles are not like ligaments, which can lose their elasticity when stretched beyond their limits. Muscles are more likely to retain the ability to be firmed back up.") It felt perverse to hope the ultrasound would uncover that I had a severe case of diastasis recti. Still, I thought that it would let me and my pooch off the hook a little.</p>
             </br>
             <p>One thing I can blame on my daughters (not that I ever would out loud) is loose skin. I had my twins when I was 36, which is on the older side, statistically speaking. If your skin becomes distended when you're young, it stands a pretty good chance of bouncing back, because its elastin, the main ingredient in elastic fibers, still has that bungee quality. But with time, skin is less able to recover. Likewise, your connective tissue, such as the fascia that surrounds the muscle, also loses elasticity.</p>
             </br>
             <p>Theoretically, I asked Dr. Goolsby, if your connective tissue was all loosey-goosey, couldn't that explain why your belly won't stay in? She dismissed it as unlikely. Besides, "building stronger abdominal muscles will support those ligaments," says FITNESS advisory board member Michele Olson, PhD, who has done extensive research on abs at Auburn University in Montgomery, Alabama. This means that your muscles can make up for the tautness your middle is missing from any overstretched ligaments. I moved "loose connective tissue" to the "Not the cause of my pooch" column.</p>
             </br>
             <p>In the other column ("Buy Spanx"), I put the "excess flesh" and "excess skin" that I do have around my middle. As I hopped off the table to head to my scan, Dr. Goolsby pointed out that my posture is lousy. She didn't say it that way, but she demonstrated how I should stand. "Remember ABC," she said. "Pull in your abs, tuck your butt, and put your chest out with your shoulders down." Ta-da! Flatter-looking abs. It even felt more comfortable for my back.</p>
             </br>
             <p>The radiologist slathered some cold gel on my belly and gave me a guided tour of its inside. "Your muscles look pretty good, actually," he said, estimating that there are 12 millimeters between my recti. The norm is around 10, so the verdict is, I can't blame separated muscles for my apple shape. "And you don't have a lot of visceral fat," he said. "From where I'm standing, you have great abs."</p>
             </br>
             <p>I suppose I could tape a printout of my scan to my Miraclesuit with the super tummy-control panel. Or maybe I could get a T-shirt that reads "My Radiologist Insists I Have Great Abs," for all the good it would do me on the beach. Or I could relax, stand a little bit straighter, and do exercises for my obliques and deeper abs. After two workouts, I'm already feeling tucked in, so there may be something to this. In the meantime, it doesn't feel half bad to be scientifically declared beautiful on the inside.</p>
             </br>
             <p><i>http://www.fitnessmagazine.com/workout/abs/exercises/lose-belly-fat-get-flat-abs/</i></p>
             </br>
        </div>
    </body>
</html>

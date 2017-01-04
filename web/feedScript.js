function changeDropdownText(val) {
  var y = document.getElementById("dropdownText");
  var aNode = y.innerHTML = val + " <span class=\"caret\"></span>"; // Append 
  document.getElementById("All").className = "";
  document.getElementById("Videos").className = "";
  document.getElementById("Articles").className = "";
  document.getElementById(val).className += "active";
}

window.addEventListener('load',function(){
    document.getElementById("All").addEventListener("click", function() {
        changeDropdownText("All");
    });
    document.getElementById("All").addEventListener("click", noFilter);
    document.getElementById("Articles").addEventListener("click", filterArticles);
    document.getElementById("Articles").addEventListener("click", function() {
        changeDropdownText("Articles");
    });
    document.getElementById("Videos").addEventListener("click", filterVideos);
    document.getElementById("Videos").addEventListener("click", function() {
        changeDropdownText("Videos");
    });
});

//filter feed results
function filterVideos() {
    var y = document.getElementsByClassName("feed");
    var j;
    for (j = 0; j < y.length; j++) {
        y[j].style.display="initial";
    }
    var x = document.getElementsByClassName("article");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.display="none";
    }
}

function filterArticles() {
    var y = document.getElementsByClassName("feed");
    var j;
    for (j = 0; j < y.length; j++) {
        y[j].style.display="initial";
    }
    var x = document.getElementsByClassName("video");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.display="none";
    }
}

function noFilter() {
    var x = document.getElementsByClassName("feed");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.display="initial";
    }
}
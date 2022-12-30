/**
 * Inspired by: https://codepen.io/Maerianna/pen/yRBBqy
 */
 
 function getAnswers() {
  var c1counter = 0;
  var c2counter = 0;
  var c3counter = 0;
  var c4counter = 0;

  var activity = document.getElementsByName("activity");
  var color = document.getElementsByName("color");
  var location = document.getElementsByName("location");
  var feeling = document.getElementsByName("feeling");
  var animal = document.getElementsByName("animal");

  var qLocation = document.getElementsByClassName("questionBanner");

  for (var activityChoice in activity) {
    if (activity[activityChoice].checked) {
      switch (activity[activityChoice].value) {
        case "eating":
          inc1();
          break;
        case "drinking":
          inc2();
          break;
        case "painting":
          inc3();
          break;
        case "picknicking":
          inc4();
          break;
      }
      window.scrollTo(0, qLocation[1].offsetTop);
    }
  }

  for (var colChoice in color) {
    if (color[colChoice].checked) {
      switch (color[colChoice].value) {
        case "brown":
          inc1();
          break;
        case "red":
          inc2();
          break;
        case "white":
          inc3();
          break;
        case "green":
          inc4();
          break;
      }
      window.scrollTo(0, qLocation[2].offsetTop);
    }
  }

  for (var locChoice in location) {
    if (location[locChoice].checked) {
      switch (location[locChoice].value) {
        case "restaurant":
          inc1();
          break;
        case "bar":
          inc2();
          break;
        case "laboratory":
          inc3();
          break;
        case "park":
          inc4();
          break;
      }
      window.scrollTo(0, qLocation[3].offsetTop);
    }
  }

  for (var feelChoice in feeling) {
    if (feeling[feelChoice].checked) {
      switch (feeling[feelChoice].value) {
        case "pleased":
          inc1();
          break;
        case "happy":
          inc2();
          break;
        case "strange":
          inc3();
          break;
        case "complicated":
          inc4();
          break;
      }
      window.scrollTo(0, qLocation[4].offsetTop);
    }
  }

  for (var anChoice in animal) {
    if (animal[anChoice].checked) {
      switch (animal[anChoice].value) {
        case "dog":
          inc1();
          break;
        case "sloth":
          inc2();
          break;
        case "cat":
          inc3();
          break;
        case "octopus":
          inc4();
          break;
      }
    }
  }

  var counterCheck = [c1counter, c2counter, c3counter, c4counter];
  var max = 2;
  var mostPicked = 0;
  var resultHeader = document.getElementById("resultHeader");
  var resultImg = document.getElementById("resultImg");

  if (c1counter + c2counter + c3counter + c4counter > 4) {
    countChoices();
    window.scrollTo(0, qLocation[5].offsetTop);
  }

  function countChoices() {
    for (var i = 0; i < counterCheck.length; i++) {
      if (counterCheck[i] > max) {
        mostPicked = counterCheck[i];
        switch (counterCheck[i]) {
          case counterCheck[0]:
            resultHeader.innerHTML = "YUMMY! YOU'RE THE FOODIE TYPE! EXPERIMENT WITH A MOLECULAR CUISINE RECIPES!";
            resultImg.src =
              "../img/sciquiz/foodie.png";
             
             
             
             
            
             
             
            break;

          case counterCheck[1]:
            resultHeader.innerHTML = "YOU'RE A MIXER TYPE! YOU'LL HAVE FUN MAKING A SCIENCY COCKTAIL";
            resultImg.src =
              "../img/sciquiz/mixer.jpg";
            break;

          case counterCheck[2]:
            resultHeader.innerHTML = "REACTIONS MIGHT BE YOUR SPECIALTY: YOU'RE THE CHEMIST TYPE! BUILD THAT VULCANO!";
            resultImg.src =
              "../img/sciquiz/chemist.jpg";
            break;

          case counterCheck[3]:
            resultHeader.innerHTML = "STICKY TIMES AHEAD! YOU'RE THE BIOLOGIST TYPE! TIME TO EXTRACT THAT DNA!";
            resultImg.src =
              "../img/sciquiz/biologist.jpg";
            break;
        }
      }
    }

    if (counterCheck[1] == max && counterCheck[2] == max) {
      resultHeader.innerHTML = "ALGORYTHMS AND RYTHMS - YOU'RE THE PROGRAMMER TYPE. EVER TRIED PROGRAMMING MUSIC?";
      resultImg.src =
        "../img/sciquiz/programmer.jpg";
      
    } else if (counterCheck[1] == max && counterCheck[3] == max) {
      resultHeader.innerHTML = "CONNECTING THE DOTS: YOU'RE THE IOT TYPE! MAKE SURE YOU'RE NOT DISTURBED WHILE CONQUERING THE WORLD.";
      resultImg.src =
        "../img/sciquiz/iot.jpg";
    } else if (mostPicked == 0) {
      resultHeader.innerHTML = "A LITTLE BIT OF EVERYTHING! YOU'RE THE ARCHITECT TYPE! MAKE SURE YOUR RASPI HAS A COOL CASE!";
      resultImg.src =
        "../img/sciquiz/architect.jpg";
    }
  }

  function inc1() {
    c1counter++;
  }

  function inc2() {
    c2counter++;
  }

  function inc3() {
    c3counter++;
  }

  function inc4() {
    c4counter++;
  }
}
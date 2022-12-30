/**
 * Inspired by: https://codepen.io/akzhy/pen/YdbYbj
 */
 
var winWidth = $(window).width();
var ratio = winWidth / 1920;
var fontSize = {
  small: 12,
  medium: 14
};
var played = [0, 0, 0];
var vara = [];
var bodyFontSize = Math.max(16 * ratio, 10);
var posX = Math.max(80 * ratio, 30);
$("body").css("font-size", bodyFontSize + "px");
fontSize.small = Math.max(fontSize.small * ratio, 7);
fontSize.medium = Math.max(fontSize.medium * ratio, 10);

// Date
const months = ["Jan","Feb","Mar","Apr","May","June","July","Aug","Sept","Oct","Nov","Dec"];
const days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];

const d = new Date();
var year = d.getFullYear();
var month = months[d.getMonth()];
var day = d.getDate(); 
var weekday = days[d.getDay()];
const labdate = weekday + ", " + day + " " + month + " " + year;

// first page
vara[0] = new Vara(
  "#vara-container",
  "https://rawcdn.githack.com/akzhy/Vara/ed6ab92fdf196596266ae76867c415fa659eb348/fonts/Satisfy/SatisfySL.json",
  [
    {
      text: labdate,
      textAlign: "right",
      y: 20,
      x: -30,
      delay: 500,
      duration: 1500,
      fontSize: fontSize.small
    },
    {
      text: "Explore Your Virtual Laboratory!",
      y: 40,
      x: posX,
      duration: 4000
    },
    {
      text: "You can start the journey,",
      id: "sphinx",
      x: posX,
      delay: 1000,
      duration: 4500
    },
    {
      text: "... by finding out what your sciency type is. :) ",
      id: "link",
      color: "#3f51b5",
      delay: 1000,
      x: posX,
      duration: 4500
    }
  ],
  {
    strokeWidth: 2,
    fontSize: fontSize.medium,
    autoAnimation: false
  }
);

// second page
vara[1] = new Vara(
  "#vara-container2",
  "https://rawcdn.githack.com/akzhy/Vara/ed6ab92fdf196596266ae76867c415fa659eb348/fonts/Satisfy/SatisfySL.json",
  [
    {
      text: labdate,
      textAlign: "right",
      delay: 500,
      y: 20,
      x: -30,
      duration: 1500,
      fontSize: fontSize.small
    },
    {
      text: "Need inspiration?",
      y: 40,
      x: posX,
      duration: 4000
    },
    {
      text: "Try the Experiment of the Day => ",
      id: "link",
      color: "#3f51b5",
      y: 40,
      x: posX,
      duration: 3500
    }
  ],
  {
    strokeWidth: 2,
    fontSize: fontSize.medium,
    autoAnimation: false
  }
);


// third page
vara[2] = new Vara(
  "#vara-container3",
  "https://rawcdn.githack.com/akzhy/Vara/ed6ab92fdf196596266ae76867c415fa659eb348/fonts/Satisfy/SatisfySL.json",
  [
    {
      text: labdate,
      textAlign: "right",
      delay: 500,
      y: 20,
      x: -30,
      duration: 1500,
      fontSize: fontSize.small
    },
    {
      text: "Update Your Laboratory! ",
      y: 40,
      x: posX,
      duration: 4000
    },
    {
      text: "Visit our geeky ",
      y: 20,
      x: posX,
      duration: 3500
    },
    {
      text: "Shop.",
      y: 10,
      color: "#3f51b5",
      id: "link",
      x: posX,
      duration: 1500
    }
  ],
  {
    strokeWidth: 2,
    fontSize: fontSize.medium,
    autoAnimation: false
  }
);



vara[2].ready(function() {
  $(".front:not(.last)").click(function() {
    var ix = $(this)
      .parent(".paper")
      .index();
    $(".labbook").addClass("open");
    $(this)
      .parent(".paper")
      .addClass("open");
    if (!played[ix]) {
      vara[ix].playAll();
      vara[ix].animationEnd(function(i, o) {
        played[ix] = 1;
        if (i == "link") {
          var group = o.container;
          var rect = vara[2].createNode("rect", {
            x: 0,
            y: 0,
            width: o.container.getBoundingClientRect().width,
            height: o.container.getBoundingClientRect().height,
            fill: "transparent"
          });
          group.appendChild(rect);
          $(rect).css("cursor", "pointer");
          $(rect).click(function() {
            console.log(true);
            document.querySelector("#link").click();
          });
        }
      });
    }
  });
  $(".back").click(function() {
    if (
      $(this)
        .parent(".paper")
        .index() == 0
    )
      $(".labbook").removeClass("open");
    $(this)
      .parent(".paper")
      .removeClass("open");
  });
});
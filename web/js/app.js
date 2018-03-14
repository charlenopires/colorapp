function random(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

function changeColorOn(r, g, b) {
  Array.from(document.getElementsByClassName("elem")).forEach(function (e, i) {
    e.style.backgroundColor = "rgba("+ r +", "+ g +", "+ b +","+ 0.1*(i+1)*2 + ")";
  });
}

function changeColor() {
  var database = firebase.database();
  database.ref('colors').remove();
  var colors = {
    r: random(0, 255),
    g: random(0, 255),
    b: random(0, 255)
  };

  changeColorOn(colors.r, colors.g, colors.b);
  database.ref('colors').set({
    r: colors.r,
    g: colors.g,
    b: colors.b
  });

}
function random(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

function changeColor() {
  var r = random(0, 255);
  var g = random(0, 255);
  var b = random(0, 255);
  document.getElementsByClassName("elem")[0].style.backgroundColor = `rgba(${r}, ${g}, ${b}, 0.2)`;
  document.getElementsByClassName("elem")[1].style.backgroundColor = `rgba(${r}, ${g}, ${b}, 0.4)`;
  document.getElementsByClassName("elem")[2].style.backgroundColor = `rgba(${r}, ${g}, ${b}, 0.6)`;
  document.getElementsByClassName("elem")[3].style.backgroundColor = `rgba(${r}, ${g}, ${b}, 0.8)`;
  document.getElementsByClassName("elem")[4].style.backgroundColor = `rgba(${r}, ${g}, ${b}, 1.0)`;
}
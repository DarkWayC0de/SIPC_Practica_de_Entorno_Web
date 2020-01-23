function readmore(id) {
  var dots = document.getElementById("dots"+id);
  var moreText = document.getElementById("more"+id			);
  var btnText = document.getElementById(id);

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Leer mas";
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "Leer menos";
    moreText.style.display = "inline";
  }
}

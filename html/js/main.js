function setRandomHomepageBackground() {
  var backgrounds = [
    "genericMountainBackground.jpg",
    "angkorWatBackground.jpg"
  ];

  var picNum = Math.floor(Math.random() * 2);

  $('header').css('background-image', 'url(./img/index_backgrounds/' + backgrounds[picNum] + ')');
}

$(document).ready(function() {
  setRandomHomepageBackground();
});
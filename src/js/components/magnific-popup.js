/* Javascript for the gallery popups */
$('.gallery-popup').magnificPopup({
  type: 'image'
});

$('.popup-image').magnificPopup({
  type: 'image'
});

$('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
  disableOn: 700,
  type: 'iframe',
  mainClass: 'mfp-fade',
  removalDelay: 160,
  preloader: false,
  fixedContentPos: false
});

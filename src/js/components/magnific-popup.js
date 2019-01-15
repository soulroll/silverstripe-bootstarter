/* Javascript for the gallery popups */
$('.gallery-popup').magnificPopup({
  type: 'image',
  gallery: {
    enabled: true
  }
});

$('.popup-image').magnificPopup({
  type: 'image',
  gallery: {
    enabled: true
  }
});

$('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
  disableOn: 700,
  type: 'iframe',
  mainClass: 'mfp-fade',
  removalDelay: 160,
  preloader: false,
  fixedContentPos: false
});

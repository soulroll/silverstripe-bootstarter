$('.search-toggle').click(function () {
  $('.search-toggle-dropdown').toggleClass('open');
  $('.navigation-desktop-right-menu').toggleClass('search-open');
});

$('.search-toggle-in-navigation').click(function () {
  $('.search-toggle-in-navigation-dropdown').toggleClass('open');
  $('.search-toggle-in-navigation').toggleClass('open');
});

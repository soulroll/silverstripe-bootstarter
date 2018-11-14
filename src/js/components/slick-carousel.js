/* Slick carousel */
$('.slick-carousel').slick({
  infinite: true,
  slidesToShow: 1,
  arrows: false,
  slidesToScroll: 1
});

$('.slick-carousel-arrow-left').click(function(){
  $('.slick-carousel').slick('slickPrev');
})
$('.slick-carousel-arrow-right').click(function(){
  $('.slick-carousel').slick('slickNext');
})

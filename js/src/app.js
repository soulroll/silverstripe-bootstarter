window.$ = window.jQuery = require('jquery');
var bootstrap = require('bootstrap-sass');
var matchHeight = require('jquery-match-height');

/* Make Bootstrap tables responsive */
$('table').each(function() {
  var element = $(this);
  // Create the wrapper element
  var scrollWrapper = $('<div />', {
    'class': 'table-responsive',
    'html': '<div />' // The inner div is needed for styling
  }).insertBefore(element);
  // Store a reference to the wrapper element
  element.data('scrollWrapper', scrollWrapper);
  // Move the scrollable element inside the wrapper element
  element.appendTo(scrollWrapper.find('div'));
  // Check if the element is wider than its parent and thus needs to be scrollable
  if (element.outerWidth() > element.parent().outerWidth()) {
    element.data('scrollWrapper').addClass('has-scroll');
  }
  // When the viewport size is changed, check again if the element needs to be scrollable
  $(window).on('resize orientationchange', function() {
    if (element.outerWidth() > element.parent().outerWidth()) {
      element.data('scrollWrapper').addClass('has-scroll');
    } else {
      element.data('scrollWrapper').removeClass('has-scroll');
    }
  });
});

/* Match height */
$('.footer-list').matchHeight();






/* Sticky navbar
jQuery(function(){
  var menuOffset = jQuery('#site-navigation')[0].offsetTop;
  jQuery(document).bind('ready scroll',function() {
    var docScroll = jQuery(document).scrollTop();
    if(docScroll &gt;= menuOffset) {
      jQuery('#site-navigation').addClass('fixed').css('width',jQuery('#masthead').width());
    } else {
      jQuery('#site-navigation').removeClass('fixed').removeAttr(&quot;width&quot;);
    }
   });
});
*/

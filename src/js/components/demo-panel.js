var selectedScheme = 'navigation-left';
var selectedColour = '';
var selectedFont = '';

$('#font_family').change(function(){
    $('body').removeClass(selectedFont).addClass($(this).val());
    selectedFont = $(this).val();
});

$('.demo-close').click(function(){
    $('.demo-toggle-panel').toggleClass('demo-toggle-panel-close');
});

$('.btn-theme-light-green').click(function(){
    $('body').removeClass(selectedColour)
    $('body').addClass('theme-light-green');
    selectedColour = 'theme-light-green';
});

$('.btn-theme-green').click(function(){
    $('body').removeClass(selectedColour)
    $('body').addClass('theme-green');
    selectedColour = 'theme-green';
});

$('.btn-theme-blue').click(function(){
    $('body').removeClass(selectedColour)
    $('body').addClass('theme-blue');
    selectedColour = 'theme-blue';
});

$('.btn-theme-navy').click(function(){
    $('body').removeClass(selectedColour)
    $('body').addClass('theme-navy');
    selectedColour = 'theme-navy';
});

$('.btn-theme-teal').click(function(){
    $('body').removeClass(selectedColour)
    $('body').addClass('theme-teal');
    selectedColour = 'theme-teal';
});

$('.btn-theme-cyan').click(function(){
    $('body').removeClass(selectedColour)
    $('body').addClass('theme-cyan');
    selectedColour = 'theme-cyan';
});

$('.btn-theme-red').click(function(){
    $('body').removeClass(selectedColour)
    $('body').addClass('theme-red');
    selectedColour = 'theme-red';
});

$('.btn-theme-orange').click(function(){
    $('body').removeClass(selectedColour)
    $('body').addClass('theme-orange');
    selectedColour = 'theme-orange';
});

$('.btn-theme-purple').click(function(){
    $('body').removeClass(selectedColour)
    $('body').addClass('theme-purple');
    selectedColour = 'theme-purple';
});

$('.btn-theme-brown').click(function(){
    $('body').removeClass(selectedColour)
    $('body').addClass('theme-brown');
    selectedColour = 'theme-brown';
});

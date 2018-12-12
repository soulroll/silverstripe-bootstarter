var selectedScheme = 'navigation-left';

$('#navigation_style').change(function(){
    $('#navigation-wrapper').removeClass(selectedScheme).addClass($(this).val());
    selectedScheme = $(this).val();
});

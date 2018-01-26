$(document).ready(function() {
		
	$(function() {
    $('#nav-wrapper').height($("#nav").height());
    
    $('#nav').affix({
        offset: { top: $('#nav').offset().top }
    	});
	});

	window.scrollTo = function( x,y ) 
    {
        return true;
    }

});

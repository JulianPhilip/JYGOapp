// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

(function(){
// Globals :
var doc = $(document);
// Scrolling animation
$('.page-scroll').click(function(){
    $('html, body').animate({
        scrollTop: $( $.attr(this, 'href') ).offset().top
    }, 500);
    return false;
});

//Navbar scroll detection : -------------------------------------------------------
var docElem = document.documentElement,
		header = document.querySelector( '.navbar-default' ),
		didScroll = false,
		changeHeaderOn = $(window).height() - 150;


	function init() {
		window.addEventListener( 'scroll', function( event ) {
			if( !didScroll ) {
				didScroll = true;
				setTimeout( scrollPage, 250 );
			}
		}, false );
	}

	function scrollPage() {
		var sy = scrollY();
		if ( sy >= changeHeaderOn ) {
			classie.add( header, 'navbar-shrink' );
		}
		else {
			classie.remove( header, 'navbar-shrink' );
		}
		didScroll = false;
	}

	function scrollY() {
		return window.pageYOffset || docElem.scrollTop;
	}

	init();

})();
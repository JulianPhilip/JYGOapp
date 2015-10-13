// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

(function(){
// Globals :
var doc = $(document);
// Scrolling animation
$('a').click(function(){
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

// Hide SVG paths :-------------------------------------------------------
var pathlist = document.querySelectorAll("path");

var hideAllPaths = function() {
	for (i=0; i<pathlist.length; i++) {
		l = pathlist[i].getTotalLength();
		pathlist[i].style.strokeDasharray = l + " " + l;
		pathlist[i].style.strokeDashoffset = l;
		pathlist[i].getBoundingClientRect();
		pathlist[i].style.transition = "stroke-dashoffset 2s ease-in-out";
	}
}

// pathlist[0].getBoundingClientRect().top < returns position relative to top of viewport
// $(window).height() < to get viewport height

//TODO (thomas): make it unroll for real with dash thing
var unroll = function() {
	for (i=0; i<pathlist.length; i++) {
		(function(index) {
			setTimeout(function(){
				pathlist[index].style.display = 'inline';
			}, 900 * index + 300);
		})(i);
	}
}

hideAllPaths();
//pathlist[i].style.strokeDashoffset = "0";
//unroll();

})();
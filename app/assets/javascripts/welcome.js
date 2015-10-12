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

// Navbars swaping, (transparent/opaque)

$("nav#scrollednav").removeClass("active");
$("nav#landingnav").addClass("active");

doc.on("scroll", function(e){
	if(doc.scrollTop() >= $(window).height()) {
		$("nav#landingnav").removeClass("active");
		$("nav#scrollednav").addClass("active");
	}
	else {
		$("nav#scrollednav").removeClass("active");
		$("nav#landingnav").addClass("active");
	}
})

// Hide SVG paths :
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
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

// note (thomas): I'm not sure about this block below:
//  
// function htmlbodyHeightUpdate(){
//     var height3 = $( window ).height()
//     var height1 = $('.nav').height()+50
//     height2 = $('.main').height()
//     if(height2 > height3){
//       $('html').height(Math.max(height1,height3,height2)+10);
//       $('body').height(Math.max(height1,height3,height2)+10);
//     }
//     else
//     {
//       $('html').height(Math.max(height1,height3,height2));
//       $('body').height(Math.max(height1,height3,height2));
//     }

//   }
//   $(document).ready(function () {
//     htmlbodyHeightUpdate()
//     $( window ).resize(function() {
//       htmlbodyHeightUpdate()
//     });
//     $( window ).scroll(function() {
//       height2 = $('.main').height()
//         htmlbodyHeightUpdate()
//     });
//   });

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
console.log(pathlist);

var hideAllPaths = function() {
	for (i=0; i<pathlist.length; i++) {
		pathlist[i].style.display = "none";
	}
}

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

//hideAllPaths();
//unroll();

})();
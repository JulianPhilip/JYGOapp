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

$(".modalLink").click(function(e){
	$(".modalDialog").toggleClass("active");
});

$('.closeModal').click(function(e){
	$(".modalDialog").removeClass("active");
})

var getLoginData = function(){
	var email = $(".modalDialog.email").val();
	var password = $(".modalDialog.password").val();
	resp = {user: { email: email, password: password, remember_me: 1}};
	return resp;
}


$('.modalDialog.loginBtn').click(function(e){
	var ld = getLoginData();
	console.log('lhlkjhljkhlkjh' + ld);
	var loginrequest = $.ajax({
		method: "POST",
		url: "/users",
		data: ld
	});
});

// Navbars dropdown menus :
$(".dropdownToggle.transparent").click(function(e){
	$('.dropdown').toggleClass('active');
})
$(".dropdownToggle.opaque").click(function(e){
	$('.dropdown.opaque').toggleClass('active');
})

})();
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
//= require underscore
//= require gmaps/google

//= require bootstrap-sprockets


//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
//----CLASSIE------------------------------------------------------------------
/*!
 * classie - class helper functions
 * from bonzo https://github.com/ded/bonzo
 *
 * classie.has( elem, 'my-class' ) -> true/false
 * classie.add( elem, 'my-new-class' )
 * classie.remove( elem, 'my-unwanted-class' )
 * classie.toggle( elem, 'my-class' )
 */

/*jshint browser: true, strict: true, undef: true */
/*global define: false */
( function( window ) {

'use strict';

// class helper functions from bonzo https://github.com/ded/bonzo

function classReg( className ) {
  return new RegExp("(^|\\s+)" + className + "(\\s+|$)");
}

// classList support for class management
// altho to be fair, the api sucks because it won't accept multiple classes at once
var hasClass, addClass, removeClass;

if ( 'classList' in document.documentElement ) {
  hasClass = function( elem, c ) {
    return elem.classList.contains( c );
  };
  addClass = function( elem, c ) {
    elem.classList.add( c );
  };
  removeClass = function( elem, c ) {
    elem.classList.remove( c );
  };
}
else {
  hasClass = function( elem, c ) {
    return classReg( c ).test( elem.className );
  };
  addClass = function( elem, c ) {
    if ( !hasClass( elem, c ) ) {
      elem.className = elem.className + ' ' + c;
    }
  };
  removeClass = function( elem, c ) {
    elem.className = elem.className.replace( classReg( c ), ' ' );
  };
}

function toggleClass( elem, c ) {
  var fn = hasClass( elem, c ) ? removeClass : addClass;
  fn( elem, c );
}

var classie = {
  // full names
  hasClass: hasClass,
  addClass: addClass,
  removeClass: removeClass,
  toggleClass: toggleClass,
  // short names
  has: hasClass,
  add: addClass,
  remove: removeClass,
  toggle: toggleClass
};

// transport
if ( typeof define === 'function' && define.amd ) {
  // AMD
  define( classie );
} else {
  // browser global
  window.classie = classie;
}

})( window );


//------------------------------------------------------------------------
//------------------------------------------------------------------------
//------------------------------------------------------------------------
//------------------------------------------------------------------------
//------------------------------------------------------------------------
//------------------------------------------------------------------------
//------------------------------------------------------------------------
//------------------------------------------------------------------------

$(function(){

// Modal -----------------------------------------------------------------
$(".modalLink").click(function(e){
	$(".modal-dialog.login").toggleClass("active");
});

$('.closeModal').click(function(e){
	$(".modal-dialog.login").removeClass("active");
})

// AJAX handling stuff :
var getLoginData = function(){
	var email = $("#emailInput").val();
	var password = $("#passwordInput").val();
	console.log("GET DATA LOGIN", email, password);
	resp = {user: { email: email, password: password, remember_me: 1}};
	return resp;
}

$('.loginBtn').click(function(e){
	var ld = getLoginData();
	var loginrequest = $.ajax({
		url: "/users/sign_in",
		method: "POST",
		beforeSend: function(xhr) {xhr.setRequestHeader("X-CSRF-Token", $('meta[name="csrf-token"]').attr('content'))},
		data: ld,
		success: function(r){
			//window.location.href = r.redirect
			console.log(r);
			window.location = '/';
		}
	});
	//loginrequest.send();
});

$('#submit_button').click(function(e){
  var rad = $('#shopper_default_radius').val();
  if (rad == ''){
    e.preventDefault();
    $("#alert").html("ce champ n'est pas rempli");
  }
});
$("#validez").click(function(e){
  var uname = $('#user_username').val();
  if (uname == '' ){
    e.preventDefault();
    $("#alert7").html("ce champ n'est pas rempli");
  }
});
$("#validez").click(function(e){
  var fname = $('#user_firstname').val();
  if (fname == '' ){
    e.preventDefault();
    $("#alert6").html("ce champ n'est pas rempli");
  }
});
$("#validez").click(function(e){
  var lname = $('#user_lastname').val();
  if (lname == '' ){
    e.preventDefault();
    $("#alert5").html("ce champ n'est pas rempli");
  }
});
$("#validez").click(function(e){
  var uads = $('#user_address').val();
  if (uads == '' ){
    e.preventDefault();
    $("#alert4").html("ce champ n'est pas rempli");
  }
});
$("#validez").click(function(e){
  var ucty = $('#user_city').val();
  if (ucty == '' ){
    e.preventDefault();
    $("#alert3").html("ce champ n'est pas rempli");
  }
});
$("#validez").click(function(e){
  var uzpcd = $('#user_zip_code').val();
  if (uzpcd == '' ){
    e.preventDefault();
    $("#alert2").html("ce champ n'est pas rempli");
  }
});
$("#validez").click(function(e){
  var ufnbr = $('#user_phone_number').val();
  if (ufnbr == '' ){
    e.preventDefault();
    $("#alert").html("ce champ n'est pas rempli");
  }
});
$("#commande").click(function(e){
  var val = $('#user-form').val();
  if (val == '' ){
    e.preventDefault();
    $("#must").html("ce champ n'est pas rempli");
  }
});


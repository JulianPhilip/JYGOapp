^e9677ea (Julian Philip        2015-10-05 22:57:43 +0200  1) <!DOCTYPE html>
^e9677ea (Julian Philip        2015-10-05 22:57:43 +0200  2) <html>
^e9677ea (Julian Philip        2015-10-05 22:57:43 +0200  3) <head>
96613002 (Julian Philip        2015-10-05 23:46:10 +0200  4)   <title><%= yield(:title) || "JYGO" %></title>
96613002 (Julian Philip        2015-10-05 23:46:10 +0200  5)   <meta name="The crowdsourced shopping service" content="<%= (yield(:description) || "").squish %>">
96613002 (Julian Philip        2015-10-05 23:46:10 +0200  6)   <meta name="viewport" content="width=device-width, initial-scale=1">
96613002 (Julian Philip        2015-10-05 23:46:10 +0200  7)   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
098d26a2 (doei                 2015-10-11 15:37:23 +0200  8)   <%= stylesheet_link_tag 'application', params[:controller], media: 'all', 'data-turbolinks-track' => true %>
f2a55bbe (Julian Philip        2015-10-13 17:59:08 +0200  9)   <%= javascript_include_tag 'application' %>
^e9677ea (Julian Philip        2015-10-05 22:57:43 +0200 10)   <%= csrf_meta_tags %>
^e9677ea (Julian Philip        2015-10-05 22:57:43 +0200 11) </head>
1c1bb828 (doei                 2015-10-09 13:00:39 +0200 12) <body>
38e142d4 (doei                 2015-10-13 17:04:56 +0200 13) 	<div class="backround-img blur" style="background:url(http://i.imgur.com/66nKj6x.jpg)"></div>
fd350317 (doei                 2015-10-11 13:24:45 +0200 14) 	<%= render 'shared/navbar' %>
fd350317 (doei                 2015-10-11 13:24:45 +0200 15) 
fd350317 (doei                 2015-10-11 13:24:45 +0200 16) 	<% if false %>
fd350317 (doei                 2015-10-11 13:24:45 +0200 17) 		<%= render 'shared/notices' %>
b20b4950 (doei                 2015-10-11 12:57:50 +0200 18) 	<% end %>
f233b0bc (Julian Philip        2015-10-08 21:03:52 +0200 19) 
fd350317 (doei                 2015-10-11 13:24:45 +0200 20) 	<% if false %>
fd350317 (doei                 2015-10-11 13:24:45 +0200 21) 		<% if user_signed_in? %>
fd350317 (doei                 2015-10-11 13:24:45 +0200 22) 		<%= render partial: "shared/side_bar" %>
fd350317 (doei                 2015-10-11 13:24:45 +0200 23) 		<% end %>
fd350317 (doei                 2015-10-11 13:24:45 +0200 24) 	<% end %>
fd350317 (doei                 2015-10-11 13:24:45 +0200 25) 
efff5579 (doei                 2015-10-12 01:52:26 +0200 26) 	<div id="openModal" class="modalDialog">
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 27) 		<!-- <div>
efff5579 (doei                 2015-10-12 01:52:26 +0200 28) 			<a href="#close" class="closeModal">X</a>
e545eafb (Julian Philip        2015-10-12 16:39:58 +0200 29) 			<h2>Login</h2>
a1dcba45 (doei                 2015-10-12 02:46:37 +0200 30) 			<form id="loginForm" action="">
86d2a9c6 (doei                 2015-10-12 16:23:16 +0200 31) 				<input id="emailInput" type="text" placeholder="Email">
86d2a9c6 (doei                 2015-10-12 16:23:16 +0200 32) 				<input id="passwordInput" type="password" placeholder="Mot de passe">
86d2a9c6 (doei                 2015-10-12 16:23:16 +0200 33) 				<button class="loginBtn" type="button">Go</button>
a1dcba45 (doei                 2015-10-12 02:46:37 +0200 34) 			</form>
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 35) 		</div> -->
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 36) 		        <div class="modal-dialog">
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 37)             <div class="modal-content">
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 38)                 <div class="modal-header">
53c09707 (doei                 2015-10-13 17:38:51 +0200 39)                     <a href="#close" class="closeModal btn btn-default btn-sm pull-right"><span class="glyphicon glyphicon-remove"></span></a>
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 40)                     <h4 class="modal-title" id="myModalLabel">Login</h4>
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 41)                 </div>
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 42)                 <div class="modal-body">
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 43)                     <center>
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 44) 	                    <h3 class="media-heading">
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 45) 	                    <small>
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 46) 		                    <input id="emailInput" type="text" placeholder="Email">
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 47) 		                    <input id="passwordInput" type="password" placeholder="Mot de passe">
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 48) 	                    </small>
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 49) 	                    </h3>
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 50)                     </center>
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 51)                     <hr>
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 52)                     <center>
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 53) 	                   <button class="loginBtn" type="button">Go</button> 
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 54)                     <br>
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 55)                     </center>
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 56)                 </div>
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 57)             </div>
de8a2a82 (doei                 2015-10-13 17:32:02 +0200 58)         </div>
efff5579 (doei                 2015-10-12 01:52:26 +0200 59) 	</div>
b98145c1 (Augusto della Faille 2015-10-13 17:16:45 +0200 60)   <%= javascript_include_tag "https://maps.google.com/maps/api/js?sensor=false" %>
b98145c1 (Augusto della Faille 2015-10-13 17:16:45 +0200 61)   <%= javascript_include_tag "https://google-maps-utility-library-v3.googlecode.com/svn/tags/markerclustererplus/2.0.14/src/markerclusterer_packed.js" %>
b98145c1 (Augusto della Faille 2015-10-13 17:16:45 +0200 62) 
efff5579 (doei                 2015-10-12 01:52:26 +0200 63) 
d8ec90ee (doei                 2015-10-13 18:12:42 +0200 64)   <%= javascript_include_tag 'application', params[:controller], 'data-turbolinks-track' => true %>
e545eafb (Julian Philip        2015-10-12 16:39:58 +0200 65) 
fd350317 (doei                 2015-10-11 13:24:45 +0200 66) 
fd350317 (doei                 2015-10-11 13:24:45 +0200 67) 	<%= yield %>
544c34b0 (Augusto della Faille 2015-10-11 18:52:23 +0200 68) 
b98145c1 (Augusto della Faille 2015-10-13 17:16:45 +0200 69) 
b98145c1 (Augusto della Faille 2015-10-13 17:16:45 +0200 70)   <%= yield(:after_js)%>
b98145c1 (Augusto della Faille 2015-10-13 17:16:45 +0200 71) 
b98145c1 (Augusto della Faille 2015-10-13 17:16:45 +0200 72) 
e545eafb (Julian Philip        2015-10-12 16:39:58 +0200 73)   <!-- Latest compiled and minified JavaScript -->
e545eafb (Julian Philip        2015-10-12 16:39:58 +0200 74)   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
e545eafb (Julian Philip        2015-10-12 16:39:58 +0200 75) 
^e9677ea (Julian Philip        2015-10-05 22:57:43 +0200 76) </body>
^e9677ea (Julian Philip        2015-10-05 22:57:43 +0200 77) </html>

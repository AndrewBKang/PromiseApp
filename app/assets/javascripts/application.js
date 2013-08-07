// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(document).ready(function(){
	
	$('.search').click(function(){
		$('.search-left').toggle()
	});
	
	$('.navbar-left a').mousedown(function(){
		$(this).addClass("clicked")
	});
	
	$('.navbar-left a').mouseup(function(){
		$(this).removeClass("clicked")
	});
	
	$('.navbar-left a').mouseleave(function(){
		$(this).removeClass("clicked")
	});
	
	$('.mini-window-container').resizable({
		maxWidth: 538,
		minWidth: 538,
		maxHeight: 800,
		minHeight: 160
	});
	
	$('.mini-window').resizable({
		maxWidth: 501,
		minWidth: 501,
		maxHeight: 480,
		minHeight: 85
	});
	
	$('.window-container-list').sortable({
		revert:true,
		handle: 'h3'
	});
	
});
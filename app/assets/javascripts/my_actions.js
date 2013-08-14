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
		minHeight: 35
	});
	
	$('.mini-window').resizable({
		maxWidth: 501,
		minWidth: 501,
		maxHeight: 480,
		minHeight: 85
	});
	
	$('.feed-right').resizable({
		maxHeight:480,
		minHeight:55,
		maxWidth:190,
		minWidth:190
	});
	
	$('.window-container-list').sortable({
		revert:true,
		handle: 'h3'
	});
	
	$('.navbar > .left-menu > li > .request-tab').on('click', function(event){
		$('.requests-list').toggle();
	});
	
	$('.navbar > .left-menu > li > .notification-tab').on('click', function(event){
		$('.notifications-list').toggle();
	});
	
	$('.page-navbar > li > a').on('click', function(event){
		$('.resolution_form').toggle();
	});
	
});
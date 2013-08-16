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
	
	$('.resolution').resizable({
		maxWidth: 400,
		minWidth: 400,
		maxHeight: 480,
		minHeight: 40
	});
	
	$('.feed-right > ul').resizable({
		maxHeight:480,
		minHeight:55,
		maxWidth:150,
		minWidth:150
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
	
	$('.page-navbar > li > .new_res').on('click', function(event){
		$('.resolution_form').toggle();
	});
	
	$('.page-navbar > li > .new_pic').on('click', function(event){
		$('.new_pic_form').toggle();
	});
	
	$('.resolution-list').on('click','.show-comment > a', function(event){
		$(event.target).closest('.mini-window').find('.comments').toggle();
	});
	
	$('.resolution-list').on('click', '.update-button', function(event){
		$(this).parent().find('.update-form').toggle();
	});
	
	$('.')
	
});
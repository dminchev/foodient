//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require jquery.masonry.min

$ ->
	$container = $("#grid")
	$container.imagesLoaded ->
	  $container.masonry
	    itemSelector: ".item"
	    columnWidth: 212
    

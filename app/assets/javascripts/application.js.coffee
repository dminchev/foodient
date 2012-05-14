//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require jquery.masonry.min
//= require jquery.infinitescroll.min

$ ->
  $("#grid").infinitescroll
    loading:
      finishedMsg: "<em>There are no more recipes.</em>"
      img: "http://www.infinite-scroll.com/loading.gif"
      msgText: "<em>Loading the next set of recipes...</em>"
    navSelector  : "a.link:last"
    nextSelector : "a.link:last"
    itemSelector : ".item"
    (newElements) ->
      $(newElements).css "display", "none"
      $(newElements).imagesLoaded ->
        $container.masonry "appended", $(newElements), false
        $(newElements).css "display", "block"

  $container = $("#grid")
  $container.imagesLoaded ->
    $container.masonry
      itemSelector: ".item"
      columnWidth: 192
      isAnimated: false

  $(".btn.actions .arrow").live "click", ->
    $(this).parent().find(".extra").toggleClass "hidden"

  $(".btn.actions .extra a").live "click", ->
    $(this).parent().toggleClass "hidden"
    return false   

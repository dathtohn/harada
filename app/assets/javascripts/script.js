$(document).ready(function() {

  var $container = $('#masonry-container');

  $container.imagesLoaded( function(){
    $container.masonry({
      itemSelector : '.box'
    });
  });

});

$(document).ready(function() {
  $("a.fancybox").fancybox();
});
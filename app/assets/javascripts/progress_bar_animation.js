$(document).ready(function(){
  $(".meter > span").each(function() {
    $(this)
      .data("origWidth", $(this).data('widthPercentage'))
      .width(0)
      .animate({
        width: $(this).data("origWidth") + "%"
      }, 1200);
  });
})
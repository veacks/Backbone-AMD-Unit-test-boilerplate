define ["jquery"], ($) ->
  $("#satelite_nav").addClass("addthis_toolbox addthis_default_style").find(".last").css("float", "right").find("a").addClass("addthis_counter addthis_pill_style").find("img").detach();
  $(".share").html '<div class="addthis_toolbox addthis_default_style "><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a><a class="addthis_button_tweet"></a><a class="addthis_button_pinterest_pinit"></a><a class="addthis_counter addthis_pill_style"></a></div>'
  addthis_config = {
    "data_track_addressbar":true
  }
  require ["//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4e663a9d3e98d328"]

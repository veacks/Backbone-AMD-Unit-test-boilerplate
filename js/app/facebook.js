// Generated by CoffeeScript 1.6.2
(function() {
  define(["jquery"], function($) {
    var fbsdkload;

    $('body').append('<div id="fb-root"></div>');
    fbsdkload = function(d, s, id) {
      var fjs, js;

      js = void 0;
      fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) {
        return;
      }
      js = d.createElement(s);
      js.id = id;
      js.src = "//connect.facebook.net/fr_FR/all.js#xfbml=1&appId=" + window.App.keys.facebook;
      return fjs.parentNode.insertBefore(js, fjs);
    };
    return fbsdkload(document, "script", "facebook-jssdk");
  });

}).call(this);

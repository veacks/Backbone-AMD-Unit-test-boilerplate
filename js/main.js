// Generated by CoffeeScript 1.6.2
(function() {
  var App;

  App = App || {};

  window.App = App;

  App.Config || (App.Config = {});

  App.Models || (App.Models = {});

  App.Collections || (App.Collections = {});

  App.Routers || (App.Routers = {});

  App.Views || (App.Views = {});

  App.Templates || (App.Templates = {});

  window.app = window.app || {};

  require(["config"], function() {
    return require(["app/app"], function(init) {
      return init.call();
    });
  });

}).call(this);

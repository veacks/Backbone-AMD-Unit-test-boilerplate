# Filename: router.js
define [
  "jquery", "backbone"
  ], ($, Backbone) ->
  App.Routers.main = Backbone.Router.extend(
    initialize : (opts) ->

    routes:
      #--- Default actions
      "*actions": "defaultAction"
    
    #Init of default view
    defaultAction: () ->
      #App.main.view.render()
      true
  )

#tuktuk.js
define ["jquery", "backbone"], ($, backbone) ->
	#Tuktuk model
	App.Models.tuktuk = backbone.Model.extend()

	#Tuktuk collectiono
	App.Collections.tuktuk = backbone.Collection.extend()

	#Tuktuk view
	App.Views.tuktuk = backbone.View.extend({
		el : "body"
		initialize : ->

		render : ->


		})
# Filename: app.js
define [
	#require libs
	"jquery", "backbone", "underscore"
	"app/router"
	#Require Modules
	"app/modules/main"
	"app/modules/tuktuk"
	], ($, Backbone, _) ->
	#Require ie<9 css3 jQuery patch
	#require ["i8"] if $("html").hasClass "lt-ie9"

	#Instanciate global external app
	#require ["facebook", "google_analytics"]

	#initialize app
	initialize = ->
		#initialize models collections and views here

		#Initialize Main
		app.main = new App.Views.main()

		#Initialize Tuktuk!
		app.tutuk = new App.Views.tuktuk(
			collection : new App.Collections.tuktuk(
				model : new App.Models.tuktuk()
			)
		)

		#Put views instanciations as options
		app.Router = new App.Routers.main(
			main : app.main
			tuktuk : app.tutuk
		)

		#Router Configuration
		Backbone.history.start App.Config.router
define ["underscore"], (_) ->
	#Extend Configuration of the Api
	App.Config = _.extend(App.Config, {
		#router config
		router :
			#root : '/'
			pushState : true
		#Data Path configuration
		dataPaths : {}

		#External Api Keys configuration
		keys : {}
	})

	#Extend Configuration of the Api
	App.Config = _.extend(App.Config, {
		#External Api Path configuration
		extPaths : {}
	})

	#Configuration of libs and templates for require
	require.config 
	  paths:
	    # Require.js plugins
	    text: "plugins/require/text"
	    order: "plugins/require/order"
	    async: "plugins/require/async"
	    depend: "plugins/require/depend"
	    json:	"plugins/require/json"
	    
	    #plugs
	    addThis: "addThis"
	    google_analytics : "google_analytics"
	    
	    #Templates root
	    templates: "templates"

	#detect <= ie8 to switch jQuery 2.0 to 1.9
	getInternetExplorerVersion = ->
	  # Returns the version of Windows Internet Explorer or a -1
	  # (indicating the use of another browser).
	  rv = -1 # Return value assumes failure.
	  if navigator.appName is "Microsoft Internet Explorer"
	    ua = navigator.userAgent
	    re = new RegExp("MSIE ([0-9]{1,}[.0-9]{0,})")
	    rv = parseFloat(RegExp.$1)  if re.exec(ua)?
	  rv

	#Switch Jquery version for  < ie9
	if getInternetExplorerVersion() > -1 and getInternetExplorerVersion() < 9
	  require.config 
	    paths:
	      jquery : "plugins/jquery/fallback_jquery_ie8/jquery.min"
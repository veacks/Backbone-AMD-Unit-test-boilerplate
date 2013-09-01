define ["jam/chai/chai.js", "plugins/sinon/sinon-chai.js", "jam/sinon/sinon.js"], (chai, sinonChai, sinon) ->

	window.should = chai.should()
	window.expect = chai.expect
	
	require.config
		catchError: true
		baseUrl : "../../js/"

		paths :
			# Require.js plugins
		    text: "plugins/require/text"
		    order: "plugins/require/order"
		    async: "plugins/require/async"
		    depend: "plugins/require/depend"
		    json:	"plugins/require/json"

		    #Chai
		    chai : "jam/chai/chai.js"
		    sinonChai: "plugins/sinon/sinon-chai.js"
		    sinon : "jam/sinon/sinon.js"

	require ["json!../unit-test/test/config.json"], (config) ->
		#console.log config
		require [config.main]

		filesDone = []

		require.onResourceLoad = (context, map, depArray) ->
			if config.toTest.indexOf(map.name) > -1
				require ["../unit-test/test/"+map.name+config.ext], ->
					filesDone.push(map.name)
					if filesDone.length is config.toTest.length
						mocha.run()
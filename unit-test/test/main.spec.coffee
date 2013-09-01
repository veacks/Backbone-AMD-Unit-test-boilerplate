describe "Namespace", ->
	it "provides the 'App' object", ->
		#Expect exists and is an object.
		expect(window.App).to.be.an "object"

		#Expect all namespace properties are present.
		expect(App).to.include.keys "Config", "Collections", "Models", "Routers", "Templates", "Views"

	it "provide the 'app' object", ->
		expect(app).to.be.an "object"
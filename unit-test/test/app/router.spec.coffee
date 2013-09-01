describe "Router", ->
	#default option : Trigger and replace history
	opts = 
		trigger : true
		replace : true

	#Create a sandbox Mock object
	before ->
		#create sandbox
		@sandbox = sinon.sandbox.create()
		#mock main view model
		@sandbox.mock(App.Views.Main)
		#stub the main vue prototype and configure render
		@sandbox.stub App.Views.main.prototype
		App.Views.main.prototype.render.returns {$el:null}

	it "expect a model class", ->
		expect(App.Models.tuktuk).to.be.a "function"
		expect(@model).to.be.an "object"

	it "expect a collection class", ->
		expect(App.Collections.tuktuk).to.be.a "function"
		expect(@collection).to.be.an "object"

	it "expect a view class", ->
		expect(App.Views.tuktuk).to.be.a "function"
		expect(@view).to.be.an "object"
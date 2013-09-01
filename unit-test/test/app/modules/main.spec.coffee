describe "Main module", ->
	before ->
		@view = new App.Views.main()

	after ->
		@view.remove()

	it "Class", ->
		expect(App.Views.main).to.be.an "function"
		expect(@view).to.be.an "object"
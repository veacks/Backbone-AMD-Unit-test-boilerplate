describe "Tuktuk module", ->
	before ->
		@model = new App.Models.tuktuk()
		@collection = new App.Collections.tuktuk()
		@view = new App.Views.tuktuk()

	after ->
		@model.destroy()
		@collection.remove()
		@view.remove()

	
	#it "expect a model class", ->
	#	expect(App.Models.tuktuk).to.be.a "function"
	#	expect(@model).to.be.an "object"

	#it "expect a collection class", ->
	#	expect(App.Collections.tuktuk).to.be.a "function"
	#	expect(@collection).to.be.an "object"

	#it "expect a view class", ->
	#	expect(App.Views.tuktuk).to.be.a "function"
	#	expect(@view).to.be.an "object"

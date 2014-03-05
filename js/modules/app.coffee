define ['jquery', 'cs!view'], ($, view) ->

	app = new Object()

	app.domReady = ()->
    view.start()

	return app
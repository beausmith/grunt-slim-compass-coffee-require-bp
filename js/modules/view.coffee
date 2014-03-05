define ['jquery'], ($) ->

	view = new Object()

	view.start = ()->
    $('#loader, #container').toggleClass('hidden');
    # $('body').removeClass('no-scroll');

	return view
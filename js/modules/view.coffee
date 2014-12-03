define ['jquery'], ($) ->

	view = new Object()

	view.start = ()->
    $('.live-reload__loader, .live-reload__container').toggleClass('hidden');
    $('body').removeClass('live-reload__no-scroll');

	return view

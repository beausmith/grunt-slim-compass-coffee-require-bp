requirejs.config({
	baseUrl: 'js/modules',
	paths: {
		'cs': 'vendor/cs',
		'coffee-script': 'vendor/coffee-script',
		'domReady': 'vendor/domReady',
		'jquery': 'vendor/jquery-1.11.0.min'
	}
});

require(['domReady', 'cs!app'], function (domReady, app) {
	
	domReady(function(){
		app.domReady()
	})

});
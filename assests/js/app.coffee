define ['angular'],	(angular)->
	'use strict'
	angular.module 'AngularRequire',[]

	angular.element(document).ready ->
		angular.bootstrap(document, ["AngularRequire"])
		console.log "hi-app"
		return
	
	return

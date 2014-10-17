#jshint unused: vars 
require.config
  paths:
    angular: "../../bower_components/angular/angular"
    "angular-mocks": "../../bower_components/angular-mocks/angular-mocks"
    "angular-scenario": "../../bower_components/angular-scenario/angular-scenario"
    bootstrap: "../../bower_components/bootstrap/dist/js/bootstrap"

  shim:
    angular:
      exports: "angular"

    "angular-mocks":
      deps: ["angular"]
      exports: "angular.mock"

  priority: ["angular"]
  packages: []


#http://code.angularjs.org/1.2.1/docs/guide/bootstrap#overview_deferred-bootstrap
window.name = "NG_DEFER_BOOTSTRAP!"
require [
  "angular"
  "app"
], (angular, app) ->

  $html = angular.element(document.getElementsByTagName("html")[0])
  
  angular.element(document).ready ->
    angular.resumeBootstrap ['AngularRequire']
    console.log "i am start"
    return

  return

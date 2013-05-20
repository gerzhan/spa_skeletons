require.config  ##конфигурация RequireJS 
  baseUrl: "js/"
  paths:
    jquery:'libs/jquery.min' 
    backbone:'../../scripts/vendor/backbone-amd/backbone-min'
    underscore:'../../scripts/vendor/underscore-amd/underscore-min'
    marionette : '../../scripts/vendor/backbone.marionette/lib/core/amd/backbone.marionette.min' 
    'backbone.wreqr' : '../../scripts/vendor/backbone.wreqr/lib/amd/backbone.wreqr.min' 
    'backbone.eventbinder' : '../../scripts/vendor/backbone.eventbinder/lib/amd/backbone.eventbinder' 
    'backbone.babysitter' : '../../scripts/vendor/backbone.babysitter/lib/amd/backbone.babysitter.min' 
    bootstrap:'libs/bootstrap.min'
    modernizr:'libs/modernizr.min'
  shim: 
    backbone: 
      'deps': ['jquery','underscore']
      'exports': 'Backbone'   
    underscore: 'exports': '_'  
    marionette :  
      deps : ['backbone'] 
      exports : 'Marionette'
    bootstrap:  
      'deps': ['jquery']
      'exports': 'bootstrap'    
    
## Активация  
require ["jquery","underscore","backbone" ,"app","modernizr","bootstrap"],
($,_,Backbone,App ) ->   
  return
  
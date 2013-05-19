require.config  ##конфигурация RequireJS 
  baseUrl: "js/"
  paths:
    jquery:'libs/jquery.min' 
    backbone:'../../scripts/vendor/backbone-amd/backbone-min'
    underscore:'../../scripts/vendor/underscore-amd/underscore-min'
    bootstrap:'libs/bootstrap.min'
    modernizr:'libs/modernizr.min'
  shim: 
    backbone: 
      'deps': ['jquery','underscore']
      'exports': 'Backbone'   
    underscore: 'exports': '_'  
    bootstrap:  
      'deps': ['jquery']
      'exports': 'bootstrap'    
    
## Активация  
require ["jquery","underscore","backbone" ,"modernizr","bootstrap"],
($,_,Backbone) ->   
  return
  
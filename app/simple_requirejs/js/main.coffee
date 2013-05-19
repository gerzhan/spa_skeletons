require.config  ##конфигурация RequireJS 
  baseUrl: "js/"
  paths:
    jquery:'libs/jquery.min' 
    bootstrap:'libs/bootstrap.min'
    modernizr:'libs/modernizr.min'
  shim:  
    bootstrap:  
      'deps': ['jquery']
      'exports': 'bootstrap'    
    
## Активация  
require ["jquery","modernizr" ,"bootstrap"],
($) ->   
  return
  
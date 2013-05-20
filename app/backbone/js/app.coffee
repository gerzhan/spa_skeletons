# приложение 
define ["backbone","marionette"],  
  (Backbone,Marionette)->
    console.log "App load"
    App = new  Marionette.Application()
    
    return App
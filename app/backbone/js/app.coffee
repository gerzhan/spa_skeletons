# приложение 
define ["backbone","marionette"],  
  (Backbone,Marionette)->
    console.log "App load"
    App = new  Marionette.Application()
    App.on "initialize:before", ->
      console.log "initialize:before"
      return
      
    App.on "initialize:after", ->
      console.log "initialize:after"
      return  
       
       
    return App
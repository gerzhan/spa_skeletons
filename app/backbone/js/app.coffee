# приложение 
define ["backbone"],  
  (Backbone)->
    console.log "App load"
    App = Backbone.Router.extend
    
    return new App()
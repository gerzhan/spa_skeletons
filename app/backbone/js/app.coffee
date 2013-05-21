# приложение 
define ["backbone","marionette","msgmngr","models/Account"],  
  (Backbone,Marionette,msgMngr)->
    console.log "App load"
    app = new  Marionette.Application()
    
    app.addRegions
        content: "#content"
        navpanel: "#navpanel"
        footer : '#footer'
        
    app.on "initialize:before", ->
      console.log "initialize:before"
      return
      
    app.on "initialize:after", ->
      console.log "initialize:after"
      Backbone.history.start()
      return  
      
    app.addInitializer (options)->
      console.log "initialize app"
       
    app
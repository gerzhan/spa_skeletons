# приложение 
define ["backbone","marionette","modules/account/views/AccountLayoutsView"],  
  (Backbone,Marionette,AccountModule)->
    console.log "App load"
    App = new  Marionette.Application()
    App.addRegions
       mainRegion: "#container"
    App.on "initialize:before", ->
      ##accoutn = new AccountModule App:App 
      #accoutn.render()
      App.mainRegion.show AccountModule
      console.log "initialize:before"
      return
      
    App.on "initialize:after", ->
      console.log "initialize:after"
      Backbone.history.start()
      
      return  
       
       
    return App
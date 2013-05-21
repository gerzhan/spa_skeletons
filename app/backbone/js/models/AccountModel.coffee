define ["backbone","marionette"],
 (Backbone,Marionette)->
   Model = Backbone.Model.extend
    initialize:->
     console.log "AccountModel initialize"
     return
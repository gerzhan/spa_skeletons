define ["backbone" ,"marionette" ], (Backbone, Marionette) ->
  # private module/app router  capture the #seconapp route and call start method of our controller
  class Router extends Backbone.Marionette.AppRouter
    appRoutes:
      "about": "about"
      ##"about/me": "aboutme"
  # регистрация обработки команды на инициализацию приложения module:start:init 
  # данная команда должна быть вызвана из главного модуля приложения при выполнении процесс его инициализации(запуске)
#  msgsMngr.commands.setHandler "module:start:init", ->
#    console.log "About init"
#    new Router
#      controller: API 
  # controller API
  API =
    about: (state,tate)->
      #alert tate
      console.log "-About " ,tate
      Controller.show()
      return
    aboutme: ->   
      console.log "About me"
      Controller.showAboutMe()  
      Backbone.history.navigate "about" ,  trigger: false, replace: true 
      return
      
  return Router     
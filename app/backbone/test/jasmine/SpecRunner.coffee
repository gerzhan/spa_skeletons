require.config 
  baseUrl: "../../js/",
  urlArgs: 'cb=' + Math.random() 
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
    #'backbone.localStorage': 'lib/backbone.localStorage',
    jasmine: '../../scripts/vendor/jasmine/lib/jasmine-core/jasmine' 
    'jasmine-html': '../../scripts/vendor/jasmine/lib/jasmine-core/jasmine-html' 
    spec: '../test/jasmine/spec' 
  shim:  
    underscore:  
      exports: "_" 
    backbone:  
      deps: ['underscore', 'jquery'] 
      exports: 'Backbone'  
    jasmine:  
      exports: 'jasmine' 
    'jasmine-html':  
      deps: ['jasmine'] 
      exports: 'jasmine'
  #    'backbone.localStorage':  
#      deps: ['backbone'] 
#      exports: 'Backbone' 


window.store = "TestStore"; ## override local storage store name - for testing

require ['underscore', 'jquery', 'jasmine-html'],  (_, $, jasmine)->

  jasmineEnv = jasmine.getEnv() 
  jasmineEnv.updateInterval = 1000 

  htmlReporter = new jasmine.HtmlReporter() 

  jasmineEnv.addReporter htmlReporter 

  jasmineEnv.specFilter =  (spec)->
    return htmlReporter.specFilter spec 
  

  specs = [] 
  specs.push './spec/app_spec'  
  specs.push 'spec/models/AccountModel' 
#  specs.push 'spec/views/ClearCompletedSpec' 
#  specs.push 'spec/views/CountViewSpec' 
#  specs.push 'spec/views/FooterViewSpec' 
#  specs.push 'spec/views/MarkAllSpec' 
#  specs.push 'spec/views/NewTaskSpec' 
#  specs.push 'spec/views/TaskListSpec' 
#  specs.push 'spec/views/task/TaskViewSpec' 
#  specs.push 'spec/views/task/ViewTaskViewSpec' 
#  specs.push 'spec/views/task/EditTaskViewSpec' 


  $(()->
    require specs, ()->
      jasmineEnv.execute() )
 
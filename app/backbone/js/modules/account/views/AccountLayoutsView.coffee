define ["underscore","marionette",
  "text!./../templates/account_layout.html"
],
   (_,Marionette,tmltMainLayout)->
     
    LayoutView = Marionette.Layout.extend
       template: _.template (tmltMainLayout)
    return new LayoutView
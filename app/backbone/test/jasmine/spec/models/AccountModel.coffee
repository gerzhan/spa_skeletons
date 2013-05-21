describe "Model :: AccountModel", ->
  account = {token:false} 
  beforeEach ->
    that = @
    done  = false
    require ['models/AccountModel'],  (Model)->
      that.model = new Model()
      that.done = true
      return 
    waitsFor(
       ->done,
       "Create Models")  
    return
     
  it "should be defined", -> 
    expect(@model).toBeDefined() 
    
     
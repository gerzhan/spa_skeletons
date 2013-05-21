describe "App namespace", ->
  it "should be defined", ->
    require ['app'],  (App)->
      expect(App).toBeDefined() 
describe "first test", ->
  it "is true", ->
    expect(true).toBeTruthy(false)
    return
describe "first test2", ->
  it "is true", ->
    expect(true).toBeTruthy()
    return    
     
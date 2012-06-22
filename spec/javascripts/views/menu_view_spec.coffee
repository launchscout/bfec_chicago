describe "MenuView", ->
  beforeEach ->
    setFixtures("<div id='menu_view'></div>")
    @menu = new Cookbook.Models.Menu(title: "Yummy food")
    @menuView = new Cookbook.Views.MenuView(el: $("#menu_view"), model: @menu)
    @menuView.render()
  it "should render the menu into its element", ->
    expect(@menuView.$el).toHaveText /Yummy food/
  describe "listening to model changes", ->
    beforeEach ->
      @menu.set(title: "Awful food")
    it "should rerender the view", ->
      expect(@menuView.$el).toHaveText /Awful food/
  
    
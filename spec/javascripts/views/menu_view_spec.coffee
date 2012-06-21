describe "MenuView", ->
  beforeEach ->
    setFixtures("<div id='menu_view'></div>")
    @menuView = new Cookbook.Views.MenuView(el: $("#menu_view"))
    @menuView.menu =
      title: "Yummy food"
    @menuView.render()
  it "should render the menu into its element", ->
    expect(@menuView.$el).toHaveText /Yummy food/
    
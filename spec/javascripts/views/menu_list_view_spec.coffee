describe "MenuListView", ->
  beforeEach ->
    setFixtures("<div id='menu_list_view'></div>")
    @menus = new Cookbook.Collections.Menus([{title: "A menu"}])
    @menuListView = new Cookbook.Views.MenuListView
      el: $("#menu_list_view")
      collection: @menus
    @menuListView.render()
  it "should show the menu", ->
    expect(@menuListView.$el).toHaveText /A menu/
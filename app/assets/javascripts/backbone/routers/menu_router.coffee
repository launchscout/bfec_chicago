class Cookbook.Routers.MenuRouter extends Backbone.Router
  
  constructor: ->
    super
    @menu = new Cookbook.Models.Menu(id: 1)
    @menus = new Cookbook.Collections.Menus()
    @menuView = new Cookbook.Views.MenuView(el: $("#menu_view"), model: @menu)
    @menuListView = new Cookbook.Views.MenuListView
      el: $("#menu_list_view")
      collection: @menus
    @menus.fetch()
    
  routes:
    "menus/:id": "showMenu"
    
  showMenu: (id) ->
    @menu.id = id
    @menu.fetch()
    
$ ->
  window.menuRouter = new Cookbook.Routers.MenuRouter()
  Backbone.history.start()
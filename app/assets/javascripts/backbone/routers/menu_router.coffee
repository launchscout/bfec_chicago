class Cookbook.Routers.MenuRouter extends Backbone.Router
  
  constructor: ->
    super
    @menu = new Cookbook.Models.Menu(id: 1)
    @menuView = new Cookbook.Views.MenuView(el: $("#menu_view"), model: @menu)
    
  routes:
    "menus/:id": "showMenu"
    "list" : "listMenus"
    
  showMenu: (id) ->
    @menu.id = id
    @menu.fetch()
    
$ ->
  window.menuRouter = new Cookbook.Routers.MenuRouter()
  Backbone.history.start()
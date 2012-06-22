class Cookbook.Routers.MenuRouter extends Backbone.Router
  
  constructor: ->
    super
    @menu = new Cookbook.Models.Menu(id: 1)
    @menuView = new Cookbook.Views.MenuView(el: $("#menu_view"), model: @menu)
    
  routes:
    "menus/:id": "showMenu"
    
  showMenu: (id) ->
    debugger
    
$ ->
  window.menuRouter = new Cookbook.Routers.MenuRouter()
  Backbone.history.start()
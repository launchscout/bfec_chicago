class Cookbook.Routers.MenuRouter extends Backbone.Router
  
  constructor: ->
    super
    @menu = new Cookbook.Models.Menu(id: 1)
    @menus = new Cookbook.Collections.Menus()
    @menuView = new Cookbook.Views.MenuView(el: $("#menu_view"))
    @menuEditView = new Cookbook.Views.MenuEditView(el: $("#menu_edit_view"))
    @menuListView = new Cookbook.Views.MenuListView
      el: $("#menu_list_view")
      collection: @menus
    @menus.fetch()
    @menus.on "sync", (menu) => @navigate "menus/#{menu.id}", trigger: true
    
  routes:
    "menus/:id/edit": "editMenu"
    "menus/:id": "showMenu"
    
  showMenu: (id) ->
    @menu = @menus.get(id)
    return unless @menu
    @menuView.model = @menu
    @menuEditView.hide()
    @menuView.render()

  editMenu: (id) ->
    @menu = @menus.get(id)
    return unless @menu
    @menuEditView.model = @menu
    @menuView.hide()
    @menuEditView.render()

$ ->
  window.menuRouter = new Cookbook.Routers.MenuRouter()
  Backbone.history.start()
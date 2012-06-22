class Cookbook.Views.MenuView extends Backbone.View
  
  constructor: ->
    super
    @model.on "change", => @render()
    
  template: JST["backbone/templates/menu_view_template"]
  
  render: ->
    @$el.html @template @
    
$ ->
  menu = new Cookbook.Models.Menu(id: 1)
  menuView = new Cookbook.Views.MenuView(model: menu, el: $("#menu_view"))
  menu.fetch()
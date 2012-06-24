class Cookbook.Views.MenuListView extends Backbone.View
  
  template: JST["backbone/templates/menu_list_view_template"]
  
  constructor: ->
    super
    @collection.on "reset", => @render()
    @collection.on "sync", => @render()
    @collection.on "add", => @render()
  
  render: ->
    @$el.html @template @
  
    
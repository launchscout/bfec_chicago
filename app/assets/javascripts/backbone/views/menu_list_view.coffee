class Cookbook.Views.MenuListView extends Backbone.View
  
  template: JST["backbone/templates/menu_list_view_template"]
  
  constructor: ->
    super
    @collection.on "reset", => @render()
  
  render: ->
    @$el.html @template @
  
    
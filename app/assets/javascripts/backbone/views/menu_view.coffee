class Cookbook.Views.MenuView extends Backbone.View
  
  constructor: ->
    super
    @model.on "change", => @render()
    
  template: JST["backbone/templates/menu_view_template"]
  
  render: ->
    @$el.html @template @
    
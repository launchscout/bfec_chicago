class Cookbook.Views.MenuView extends Backbone.View
  
  template: JST["backbone/templates/menu_view_template"]
  
  render: ->
    @$el.html @template @
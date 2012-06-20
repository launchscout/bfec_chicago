class Cookbook.Views.MenuView extends Backbone.View
  
  render: ->
    @$el.html(@menu.title)
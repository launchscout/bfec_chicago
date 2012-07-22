class Cookbook.Views.RecipeListView extends Backbone.View
  
  template: JST["backbone/templates/recipe_list_view_template"]
  
  constructor: ->
    super
    @collection.on "reset", => @render()
  
  render: ->
    @$el.html @template @
  
    

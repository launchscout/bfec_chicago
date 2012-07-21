class Cookbook.Views.RecipeListView extends Backbone.View
  
  template: JST["backbone/templates/recipe_list_view_template"]
  
  constructor: ->
    super
  
  render: ->
    @$el.html @template @
  
    

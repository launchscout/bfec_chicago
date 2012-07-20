class Cookbook.Views.RecipeView extends Backbone.View
  
  render: ->
    @$el.html(@recipe.title)

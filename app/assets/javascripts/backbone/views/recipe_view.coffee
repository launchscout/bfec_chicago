class Cookbook.Views.RecipeView extends Backbone.View
  
  template: JST["backbone/templates/recipe_view_template"]
  
  render: ->
    @$el.html @template @

class Cookbook.Views.RecipeView extends Backbone.View
  
  constructor: ->
    super
    @model.on "change", => @render()
    
  template: JST["backbone/templates/recipe_view_template"]
  
  render: ->
    @$el.html @template @
    
$ ->
  recipe = new Cookbook.Models.Recipe(id: 1)
  recipeView = new Cookbook.Views.RecipeView(model: recipe, el: $("#recipe_view"))
  recipe.fetch()

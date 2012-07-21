class Cookbook.Routers.RecipeRouter extends Backbone.Router
  
  constructor: ->
    super
    @recipe = new Cookbook.Models.Recipe(id: 1)
    @recipeView = new Cookbook.Views.RecipeView(el: $("#recipe_view"), model: @recipe)
    
  routes:
    "recipes/:id": "showRecipe"
    
  showRecipe: (id) ->
    @recipe.id = id
    @recipe.fetch()
    
$ ->
  window.recipeRouter = new Cookbook.Routers.RecipeRouter()
  Backbone.history.start()

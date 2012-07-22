class Cookbook.Routers.RecipeRouter extends Backbone.Router
  
  constructor: ->
    super
    @recipe = new Cookbook.Models.Recipe(id: 1)
    @recipes = new Cookbook.Collections.Recipes()
    @recipeView = new Cookbook.Views.RecipeView(el: $("#recipe_view"), model: @recipe)
    @recipeListView = new Cookbook.Views.RecipeListView
      el: $("#recipe_list_view")
      collection: @recipes
    @recipes.fetch()
    
  routes:
    "recipes/:id": "showRecipe"
    
  showRecipe: (id) ->
    @recipe.id = id
    @recipe.fetch()
    
$ ->
  window.recipeRouter = new Cookbook.Routers.RecipeRouter()
  Backbone.history.start()

class Cookbook.Routers.RecipeRouter extends Backbone.Router
  
  constructor: ->
    super
    @recipe = new Cookbook.Models.Recipe(id: 1)
    @recipes = new Cookbook.Collections.Recipes()
    @recipeView = new Cookbook.Views.RecipeView(el: $("#recipe_view"))
    @recipeEditView = new Cookbook.Views.RecipeEditView(el: $("#recipe_edit_view"))
    @recipeListView = new Cookbook.Views.RecipeListView
      el: $("#recipe_list_view")
      collection: @recipes
    @recipes.fetch()
    @recipes.on "sync", (recipe) => @navigate "recipes/#{recipe.id}", trigger: true
    
  routes:
    "recipes/:id/edit": "editRecipe"
    "recipes/:id": "showRecipe"
    
  showRecipe: (id) ->
    @recipe = @recipes.get(id)
    return unless @recipe
    @recipeView.model = @recipe
    @recipeEditView.hide()
    @recipeView.render()

  editRecipe: (id) ->
    @recipe = @recipes.get(id)
    return unless @recipe
    @recipeEditView.model = @recipe
    @recipeView.hide()
    @recipeEditView.render()

$ ->
  window.recipeRouter = new Cookbook.Routers.RecipeRouter()
  Backbone.history.start()

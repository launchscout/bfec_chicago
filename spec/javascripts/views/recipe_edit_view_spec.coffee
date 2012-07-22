describe "EditRecipeSpec", ->
  beforeEach ->
    setFixtures("<div id='recipe_edit_view'></div>")
    @recipe = new Cookbook.Models.Recipe(title: "Food", description: "It is delicious.", id: 1)
    @recipeEditView = new Cookbook.Views.RecipeEditView(el: $("#recipe_edit_view"), model: @recipe)
    @recipeEditView.render()
  it "should have inputs", ->
    expect(@recipeEditView.$("input[name=title]").val()).toEqual @recipe.get("title")
    expect(@recipeEditView.$("textarea[name=description]").val()).toEqual @recipe.get("description")
describe "RecipeListView", ->
  beforeEach ->
    setFixtures("<div id='recipe_list_view'></div>")
    @recipes = new Cookbook.Collections.Recipes [
      {title: "Yummy food", id: 1}
      {title: "Yucky food", id: 2}
    ]
    @recipeListView = new Cookbook.Views.RecipeListView(el: $("#recipe_list_view"), collection: @recipes)
    @recipeListView.render()
  it "should render the recipes into its element", ->
    expect(@recipeListView.$el).toHaveText /Yummy food/
    expect(@recipeListView.$el).toHaveText /Yucky food/
  
    

describe "RecipeView", ->
  beforeEach ->
    setFixtures("<div id='recipe_view'></div>")
    @recipeView = new Cookbook.Views.RecipeView(el: $("#recipe_view"))
    @recipeView.recipe =
      title: "Yummy food"
    @recipeView.render()
  it "should render the recipe into its element", ->
    expect(@recipeView.$el).toHaveText("Yummy food")
    

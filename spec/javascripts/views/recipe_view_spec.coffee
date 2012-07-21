describe "RecipeView", ->
  beforeEach ->
    setFixtures("<div id='recipe_view'></div>")
    @recipe = new Cookbook.Models.Recipe(title: "Yummy food")
    @recipeView = new Cookbook.Views.RecipeView(el: $("#recipe_view"), model: @recipe)
    @recipeView.render()
  it "should render the recipe into its element", ->
    expect(@recipeView.$el).toHaveText /Yummy food/
  describe "listening to model changes", ->
    beforeEach ->
      @recipe.set(title: "Awful food")
    it "should rerender the view", ->
      expect(@recipeView.$el).toHaveText /Awful food/
  
    

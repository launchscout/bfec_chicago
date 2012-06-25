describe "EditRecipeSpec", ->
  beforeEach ->
    jasmine.Ajax.useMock()
    setFixtures("<div id='recipe_edit_view'></div>")
    @recipe = new Cookbook.Models.Recipe(title: "Food", description: "It is delicious.", id: 1)
    @recipeEditView = new Cookbook.Views.RecipeEditView(el: $("#recipe_edit_view"), model: @recipe)
    @recipeEditView.render()
  it "should have inputs", ->
    expect(@recipeEditView.$("input[name=title]").val()).toEqual @recipe.get("title")
    expect(@recipeEditView.$("textarea[name=description]").val()).toEqual @recipe.get("description")

  describe "saving", ->
    beforeEach ->
      @recipeEditView.$("input[name=title]").val("the new title")
      @recipeEditView.$("textarea[name=description]").val("the new description")
      @recipeEditView.save(new jQuery.Event)
    describe "a successful response", ->
      beforeEach ->
        @request = mostRecentAjaxRequest()
        @request.response
          status: 200
      it "should update the model", ->
        expect(@recipe.get("title")).toEqual "the new title"
        expect(@recipe.get("description")).toEqual "the new description"
      it "posts to the backend", ->
        expect(@request.method).toEqual "PUT"
        expect(@request.url).toEqual "/recipes/1"
    describe "with an error", ->
      beforeEach ->
        @request = mostRecentAjaxRequest()
        @request.response
          status: 422
          responseText: JSON.stringify
            errors:
              title: ["cannot be blank"]
      it "marks the field as en error", ->
        expect(@recipeEditView.$("div.control-group:first")).toHaveClass "error"
      

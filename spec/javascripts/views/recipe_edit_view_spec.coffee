describe "EditMenuSpec", ->
  beforeEach ->
    jasmine.Ajax.useMock()
    setFixtures("<div id='menu_edit_view'></div>")
    @menu = new Cookbook.Models.Menu(title: "Food", description: "It is delicious.", id: 1)
    @menuEditView = new Cookbook.Views.MenuEditView(el: $("#menu_edit_view"), model: @menu)
    @menuEditView.render()
  it "should have inputs", ->
    expect(@menuEditView.$("input[name=title]").val()).toEqual @menu.get("title")
    expect(@menuEditView.$("textarea[name=description]").val()).toEqual @menu.get("description")

  describe "saving", ->
    beforeEach ->
      @menuEditView.render()
      @menuEditView.$("input[name=title]").val("the new title")
      @menuEditView.$("textarea[name=description]").val("the new description")
      @menuEditView.save(new jQuery.Event)
      @request = mostRecentAjaxRequest()
      @request.response
        status: 200
    it "should update the model", ->
      expect(@menu.get("title")).toEqual "the new title"
      expect(@menu.get("description")).toEqual "the new description"
    it "posts to the backend", ->
      expect(@request.method).toEqual "PUT"
      expect(@request.url).toEqual "/menus/1"

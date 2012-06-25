class Cookbook.Views.RecipeView extends Backbone.View
  
  constructor: ->
    super
    @model.on("change", => @render()) if @model
    
  template: JST["backbone/templates/recipe_view_template"]
  
  hide: -> @$el.hide()
  
  render: ->
    @$el.html @template @
    @$el.show()
    
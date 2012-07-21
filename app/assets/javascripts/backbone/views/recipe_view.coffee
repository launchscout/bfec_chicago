class Cookbook.Views.RecipeView extends Backbone.View
  
  constructor: ->
    super
    @model.on "change", => @render()
    
  template: JST["backbone/templates/recipe_view_template"]
  
  render: ->
    @$el.html @template @

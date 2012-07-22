class Cookbook.Views.RecipeEditView extends Backbone.View
  
  template: JST["backbone/templates/recipe_edit_view_template"]

  hide: -> @$el.hide()
  
  render: ->
    @$el.html @template @
    @$el.show()
    

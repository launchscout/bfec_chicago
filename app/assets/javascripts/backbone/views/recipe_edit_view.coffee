class Cookbook.Views.RecipeEditView extends Backbone.View
  
  events:
    "click input[type=submit]": "save"
    
  template: JST["backbone/templates/recipe_edit_view_template"]

  hide: -> @$el.hide()
  
  render: ->
    @$el.html @template @
    @$el.show()
    
  save: (event) ->
    event.preventDefault()
    @model.set
      title: @$("input[name=title]").val()
      description: @$("textarea[name=description]").val()
    @model.save()
      
    
    

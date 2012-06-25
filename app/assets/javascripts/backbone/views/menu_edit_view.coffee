class Cookbook.Views.MenuEditView extends Backbone.View
  
  events:
    "click input[type=submit]": "save"
    
  template: JST["backbone/templates/menu_edit_view_template"]

  hide: -> @$el.hide()
  
  render: ->
    @$el.html @template @
    @$el.show()
    
  handleErrors: (model, response) ->
    errors = JSON.parse(response.responseText).errors
    @displayError(field, messages) for field, messages of errors
    
  displayError: (field, messages) ->
    fieldInput = @$("input[name=#{field}]")
    fieldInput.parent().addClass("error")
    fieldInput.after("<span class='help-inline'>#{messages[0]}</span>")
    
  save: (event) ->
    event.preventDefault()
    @model.set
      title: @$("input[name=title]").val()
      description: @$("textarea[name=description]").val()
    @model.on "error", @handleErrors, @
    @model.save()
      
    
    
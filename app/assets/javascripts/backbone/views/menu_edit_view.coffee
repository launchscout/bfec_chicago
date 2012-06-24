class Cookbook.Views.MenuEditView extends Backbone.View
  
  template: JST["backbone/templates/menu_edit_view_template"]

  hide: -> @$el.hide()
  
  render: ->
    @$el.html @template @
    @$el.show()
    
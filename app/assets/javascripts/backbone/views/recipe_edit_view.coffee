class Cookbook.Views.RecipeEditView extends Backtastic.Views.FormView

  events:
    "click input[type=submit]": "save"

  template: JST["backbone/templates/recipe_edit_view_template"]

  hide: -> @$el.hide()






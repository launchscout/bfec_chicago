class Cookbook.Models.Ingredient extends Supermodel.Model
  urlRoot: "/ingredients"
  
class Cookbook.Collections.Ingredients extends Backbone.Collection
  url: -> "/recipes/#{@owner.id}/ingredients"

  model: (attrs, options) -> Cookbook.Models.Ingredient.create(attrs, options)
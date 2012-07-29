class Cookbook.Models.Category extends Supermodel.Model
  urlRoot: "/categories"
  
class Cookbook.Collections.Categories extends Backbone.Collection
  url: "/categories"

  model: (attrs, options) -> Cookbook.Models.Category.create(attrs, options)
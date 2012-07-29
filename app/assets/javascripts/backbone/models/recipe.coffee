#= require ./category
class Cookbook.Models.Recipe extends Supermodel.Model
  urlRoot: "/recipes"
  
  @has().one "category"
    model: Cookbook.Models.Category
    inverse: "recipes"
  
  @has().many "ingredients"
    collection: Cookbook.Collections.Ingredients
    inverse: "recipes"
  
class Cookbook.Collections.Recipes extends Backbone.Collection
  url: "/recipes"
  
  model: (attrs, options) -> Cookbook.Models.Recipe.create(attrs, options)
    

class Cookbook.Models.Recipe extends Backbone.Model
  urlRoot: "/recipes"
  
class Cookbook.Collections.Recipes extends Backbone.Collection
  url: "/recipes"

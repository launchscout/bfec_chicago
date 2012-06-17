class Cookbook.Views.MyFirstView extends Backbone.View
  
  events:
    "click": "clicked"
    
  clicked: ->
    @$el.css("color", "red")
    
  render: ->
    @$el.html("This is some awesome content")
    
$ ->
  view = new Cookbook.Views.MyFirstView(el: $("#my_first_view"))
  view.render()
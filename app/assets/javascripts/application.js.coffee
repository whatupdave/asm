#= require jquery
#= require jquery_ujs
#= require underscore
#= require backbone

#= require_tree ./lib

#= require_tree ./../templates
#= require_tree ./models
#= require_tree ./views
#= require_self
#= require ./main

class window.Application
  _.extend(@.prototype, Backbone.Events)

  setCurrentUser: (user) ->
    @_currentUser = new User(user)
    @trigger 'change:currentUser', @_currentUser
    @_currentUser

  currentUser: ->
    @_currentUser

  isSignedIn: ->
    @currentUser()?

class window.NewUserRegistrationView extends Backbone.View
  template: JST['new_user_registration']

  events:
    'ajax:success form': 'success'
    'ajax:error form': 'error'

  render: ->
    @$el.html(@template())

  success: (data) ->
    console.log(arguments)
    window.app.setCurrentUser(data)

  error: (e, xhr, status, error) ->
    alert("#{status} #{error}")

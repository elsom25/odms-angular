app = angular.module('odms.controllers', [])

class MainController
  newThing: ""
  constructor: (@model) ->

  documents: ->
    @model.documents

  addDocument: ->
    @model.addDocument(@newDoc)
    @newDoc = ''

app.controller 'MainCtrl', ['DocumentService',
  (model) -> new MainController(model)
]

class LoginController
  STANDARD = 1
  ADMIN = 2
  # Private
  users =
    jesse: STANDARD
    admin: ADMIN


  # Public
  user: ''
  error: ''
  constructor: -> @

  login: ->
    auth = users[@user]
    if users[@user] == STANDARD
      # redirect to standard index
      # console.log 'STANDARD'
      @error = ''
      window.location = '#/list'
    else if users[@user] == ADMIN
      console.log 'ADMIN'
      # redirect to admin page
      @error = ''
      window.location = '#/admin/list'
    else
      @error = "#{@user} is an invalid login"

app.controller 'LoginCtrl', LoginController

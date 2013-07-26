app = angular.module('odms.controllers', [])

class MainController
  newThing: ""
  constructor: (@model) ->

  documents: ->
    @model.documents

  addDocument: ->
    d = new Date
    doc =
      team:  @docTeam
      state: 'In Progress'
      type: @docType
      title: @docTitle
      last_edited: "#{d.getFullYear()}-#{d.getMonth()+1}-#{d.getDate()}"
      owner: null
    console.log 'doc', doc
    @model.addDocument doc
    @docTitle = ''

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

app = angular.module('odms.controllers', [])

class MainController
  newThing: ""
  constructor: (@model) ->

  teams: [
    'AHS'
    'Arts'
    'Science'
    'Engineering'
    'Environment'
    'Math'
    'Cross-Campus'
  ]

  types: [
    'Event'
    'Budget'
    'Sponsorship'
  ]

  documents: ->
    @model.documents

  addDocument: ->
    d = new Date
    doc =
      team:  @docTeam
      state: 'In Progress'
      type: @docType
      title: @docTitle
      last_edited: "#{d.getFullYear()}-0#{d.getMonth()+1}-#{d.getDate()}"
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
    jc2mcgin: STANDARD
    ad3min: ADMIN


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

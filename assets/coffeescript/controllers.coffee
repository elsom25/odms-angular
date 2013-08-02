app = angular.module('odms.controllers', [])

class MainController
  newThing: ''
  constructor: (@docModel, @taskModel) ->

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
    'event'
    'budget'
    'sponsorship'
  ]

  documents: ->
    @docModel.documents

  tasklist: ->
    @taskModel.tasklist

  addDocument: ->
    d = new Date
    doc =
      team:  @docTeam
      state: 'In Progress'
      type: @docType
      title: @docTitle
      last_edited: "#{d.getFullYear()}-0#{d.getMonth()+1}-#{d.getDate()}"
      owner: null
    @docModel.addDocument doc
    @docTitle = ''

app.controller 'MainCtrl', ['DocumentService', 'TaskService'
  (docModel, taskModel) -> new MainController(docModel, taskModel)
]

class LoginController
  # Private
  STANDARD = 1
  ADMIN = 2
  users =
    jc2mcgin: STANDARD
    ad3min: ADMIN
    user: STANDARD
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



app = angular.module('odms.controllers', [])

class MainController
  newThing: ""
  constructor: (@model) ->

  things: ->
    @model.awesomeThings

  addThing: ->
    @model.addThing(@newThing)

app.controller 'MainCtrl', ['ThingService',
  (model) -> new MainController(model)
]

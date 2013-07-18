app = angular.module('odms', [])

class MainController
  constructor: ->
    @greeting = 'Hello'

  greet: ->
    return "#{@greeting}, sir!"

app.controller 'MainCtrl', MainController

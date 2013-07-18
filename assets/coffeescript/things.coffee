app = angular.module('odms.services', [])

class ThingModel
  constructor: -> @

  awesomeThings: [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

  addThing: (thing) ->
    if thing?.length
      @awesomeThings.push(thing)
      true
    else
      false

app.factory 'ThingService', [
  () -> model = new ThingModel();
]

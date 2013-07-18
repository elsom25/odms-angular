app = angular.module('odms', []).config(['$routeProvider',
  ($routeProvider) ->
    $routeProvider.when '/view1',
      templateUrl: 'pages/partial1.html'
      controller:  'MyCtrl1'
    $routeProvider.when '/view2',
      templateUrl: 'pages/partial2.html'
      controller:  'MyCtrl2'
    $routeProvider.otherwise redirectTo: '/view1'
])

class MainController
  constructor: ->
    @greeting = 'Hello'

  greet: ->
    return "#{@greeting}, sir!"

app.controller 'MainCtrl', MainController

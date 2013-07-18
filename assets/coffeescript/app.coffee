app = angular.module('odms', ['odms.things', 'odms.controllers'])

app.config ['$routeProvider',
  ($routeProvider) ->
    $routeProvider.when '/view1',
      templateUrl: 'pages/partial1.html'
      controller:  'MainCtrl'
    $routeProvider.when '/view2',
      templateUrl: 'pages/partial2.html'
      controller:  'MainCtrl'
    $routeProvider.otherwise redirectTo: '/view1'
]

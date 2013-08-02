app = angular.module('odms', ['odms.documents', 'odms.controllers'])

app.config ['$routeProvider',
  ($routeProvider) ->
    # mock login functionality
    $routeProvider.when '/login',
      templateUrl: 'pages/login.html'
      controller:  'LoginCtrl'

    # ADMIN standard routes
    $routeProvider.when '/admin/list',
      templateUrl: 'pages/admin_doc_list.html'
      controller:  'MainCtrl'
    $routeProvider.when '/admin/document/123',
      templateUrl: 'pages/admin_doc.html'
      controller:  'MainCtrl'

    # NON-ADMIN standard routes
    $routeProvider.when '/list',
      templateUrl: 'pages/doc_list.html'
      controller:  'MainCtrl'
    $routeProvider.when '/document/123',
      templateUrl: 'pages/doc.html'
      controller:  'MainCtrl'

    $routeProvider.when '/tasklist',
      templateUrl: 'pages/task_list.html'
      controller: 'MainCtrl'

    # catch all, default to login
    $routeProvider.otherwise redirectTo: '/login'
]

app = angular.module('odms.documents', [])

class DocumentModel
  constructor: -> @

  documents: [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

  addDocument: (doc) ->
    if doc?.length
      @documents.push(doc)
      true
    else
      false

app.factory 'DocumentService', [
  () -> model = new DocumentModel();
]

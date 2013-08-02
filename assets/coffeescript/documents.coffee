app = angular.module('odms.documents', [])

class DocumentModel
  constructor: -> @

  documents: [
    {
      team: 'Math'
      state: 'Reviewing'
      type: 'budget'
      title: 'Budget'
      last_edited: '2013-07-26'
      owner: null
    }
    {
      team: 'Math'
      state: 'In Progress'
      type: 'event'
      title: 'Earn Your Tie'
      last_edited: '2013-07-26'
      owner: 'Sacha Forstner'
    }
    {
      team: 'Cross-Campus'
      state: 'Needs Rework'
      type: 'event'
      title: 'Monte Carlo'
      last_edited: '2013-07-22'
      owner: null
    }
  ]

  addDocument: (doc) ->
    if doc?.title?.length
      @documents.push(doc)
      true
    else
      false

app.factory 'DocumentService', [
  () -> model = new DocumentModel();
]

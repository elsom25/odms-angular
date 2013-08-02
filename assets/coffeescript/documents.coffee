app = angular.module('odms.documents', [])

class DocumentModel
  constructor: -> @

  documents: [
    {
      team: 'Math'
      state: 'Reviewing'
      type: 'budget'
      title: 'Budget'
      note: ''
      last_edited: '2013-07-26'
      owner: null
    }
    {
      team: 'Math'
      state: 'Accepted'
      type: 'event'
      title: 'Earn Your Tie'
      note: ''
      last_edited: '2013-07-26'
      owner: 'Sacha Forstner'
    }
    {
      team: 'Math'
      state: 'Needs Rework'
      type: 'event'
      title: 'Waterloo Park Day'
      note: ''
      last_edited: '2013-07-26'
      owner: 'Sacha Forstner'
    }
    {
      team: 'Math'
      state: 'In Progress'
      type: 'budget'
      title: 'Budget'
      note: ''
      last_edited: '2013-07-26'
      owner: 'Jesse McGinnis'
    }
    {
      team: 'Cross-Campus'
      state: 'Needs Rework'
      type: 'event'
      title: 'Monte Carlo'
      note: 'Redo section 3.'
      last_edited: '2013-07-22'
      owner: null
    }
    {
      team: 'Engineerig'
      state: 'In Progress'
      type: 'budget'
      title: 'Budget'
      note: ''
      last_edited: '2013-07-22'
      owner: null
    }
    {
      team: 'Engineerig'
      state: 'Pending'
      type: 'event'
      title: 'Earn Your Hardhat'
      note: ''
      last_edited: '2013-07-22'
      owner: 'Liz Celantano'
    }
  ]

  addDocument: (doc) ->
    if doc?.title?.length
      @documents.push(doc)
      true
    else
      false

app.factory 'DocumentService', [
  () -> model = new DocumentModel()
]

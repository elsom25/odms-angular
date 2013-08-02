app = angular.module('odms.feedback', [])

class FeedbackModel
  constructor: -> @

  feedback: [
    {
      title: 'Page 37 should include this information'
      owner: 'Terry'
      date: '2013-07-31'
    }
    {
      title: 'Risk management needs to be more specific'
      owner: 'Terry'
      date: '2013-07-31'
    }
  ]

  addFeedback: (task) ->
    if task?.title?.length
      @tasklist.push(task)
      true
    else
      false

app.factory 'FeedbackService', [
  () -> model = new FeedbackModel()
]

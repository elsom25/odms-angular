app = angular.module('odms.tasklist', [])

class TaskModel
  constructor: -> @

  tasklist: [
    {
      title: 'Sponsor document has been approved'
      owner: 'Terry'
      date: '2013-07-31'
    }
    {
      title: 'STATE CHANGE [Earn Your Tie]: Reviewing -> Needs Rework'
      owner: 'Becky Wroe'
      date: '2013-07-30'
    }
    {
      title: 'Risk management needs to be more specific'
      owner: 'Jesse McGinnis'
      date: '2013-07-28'
    }
    {
      title: 'STATE CHANGE [Earn Your Tie]: Pending -> Reviewing'
      owner: 'Becky Wroe'
      date: '2013-07-28'
    }
  ]

  addTask: (task) ->
    if task?.title?.length
      @tasklist.push(task)
      true
    else
      false

app.factory 'TaskService', [
  () -> model = new TaskModel()
]

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
      title: 'Sponsor document has been approved2'
      owner: 'Terry'
      date: '2013-07-31'
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

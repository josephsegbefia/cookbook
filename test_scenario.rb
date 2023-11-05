require_relative 'task'
require_relative 'repository'
require_relative 'controller'
require_relative 'view'

repository = Repository.new
view = View.new
controller = Controller.new(view, repository)

controller.add_task
controller.add_task

controller.list_tasks

controller.mark_task_as_complete
controller.list_tasks

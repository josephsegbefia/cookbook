require_relative 'task'

class Controller
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  def add_task
    # Ask user for task
    # Take user's input
    title = @view.ask_user_for_title
    # Create instance of task from input
    task = Task.new(title)
    # Give task to the repository
    @repository.add(task)
  end

  def list_tasks
    # 1. Ask repo for all tasks
    tasks = @repository.all
    # 2. Ask view to print tasks
    @view.list_tasks(tasks)
  end

  def mark_task_as_complete

    # 1. Ask user for index of completed task
    index = @view.ask_for_task_index
    # 2. Ask the repo for task instance at index
    task = @repository.find(index)
    # 3. Mark task as complete
    task.mark_as_complete

  end
end

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

  end


  def mark_task_as_done
  end
end

class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    puts 'What would you like to do?'
    puts '1 - Add a task'
    puts '2 - List all tasks'
    puts '3 - Mark task as done'
    puts '4 - Remove a task'
  end

  def dispatch(action)
    case action
    when 1 then @controller.add_task
    when 2 then @controller.list_tasks
    when 3 then @controller.mark_task_as_complete
    when 4 then @controller.delete_task
    else
      puts "Please type 1, 2, 3, or 4"
    end
  end
end

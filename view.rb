class View
  def ask_user_for_title
    puts 'What do you want to do?'
    gets.chomp
  end

  def list_tasks(tasks)
    tasks.each_with_index do |task, index|
      x = taks.completed? ? 'X' : " "
      puts "#{index + 1} - [#{xs}] - #{task.title}"
    end
  end

  def ask_for_task_index
    puts 'what is the index of the completed task?'
    gets.chomp.to_i - 1
  end
end

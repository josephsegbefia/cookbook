require_relative 'task'
require_relative 'repository'

repo = Repository.new
task1 = Task.new('walk the dog')
task2 = Task.new("Wash the dishes")

repo.add(task1)


p task1
p task2
p repo

require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


zac = Manager.new("Zac", "tech", 25)
tony = Manager.new("Tony", "sales", 50)
steve = Manager.new("Steve", "operations", 37)

thor = Employee.new("Thor", 50000, zac)
bruce = Employee.new("Bruce", 75000, zac)
peter = Employee.new("Peter", 49500, tony)
wanda = Employee.new("Wanda", 30000, tony)
bucky = Employee.new("Bucky", 35000, steve)
natasha = Employee.new("Natasha", 50100, steve)


binding.pry
puts "done"

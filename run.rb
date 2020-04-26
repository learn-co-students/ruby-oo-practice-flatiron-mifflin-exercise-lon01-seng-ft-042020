require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager1 = Manager.new("Manager 1","Sales",21)
manager2 = Manager.new("Manager 2","Accounts",26)
manager3 = Manager.new("Manager 3","Marketing",28)
manager4 = Manager.new("Manager 4","Tax",18)

manager1.hire_employee("Sarah",2430)
manager2.hire_employee("Alice",3304)
manager4.hire_employee("Heidi",50)
manager4.hire_employee("Helen",200000)

emp1 = Employee.new("Heidi", 244,"Sandy.")

binding.pry
puts "done"

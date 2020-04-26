class Employee
    attr_reader :name, :salary, :manager

    @@all = []
 
    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
        self.manager.name
    end

    def self.paid_over(salary)
        paid_over = Employee.all.find_all {|employee| employee.salary > salary}
    end

    def self.find_by_department(department)
        manager_in_department = Manager.all.select {|manager| manager.department == department}
    end

    def tax_bracket 
        max = self.salary + 1000
        min = self.salary - 1000
        Employee.all.select {|employee| employee.salary.between?(min, max)}
    end

  end
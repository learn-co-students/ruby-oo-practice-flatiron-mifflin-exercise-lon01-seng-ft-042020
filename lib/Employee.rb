class Employee

    @@all = []

    attr_accessor :name, :salary, :manager

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end
  


    def self.paid_over(amount)
        self.all.select {|emp| emp.salary > amount}
    end

    def self.find_by_department(dept_name)
        Manager.all.find {|manager| manager.department == dept_name}
    end

    def tax_bracket
        emp_salary = self.salary
        min = emp_salary - 1000  
        max = emp_salary + 1000
        
        Employee.all.select {|emp| emp.salary.between?(min, max)}
    end
    
end


class Employee
    attr_reader :name, :salary, :manager_name
    @@all = []

    def initialize(name, salary,manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(at_least)
        @@all.select{|employee| employee.salary > at_least }
    end

    def self.find_manager_by_department(dept)
        Manager.all.find{|manager| manager.department == dept}
    end

    def self.find_by_department(dept)
        Employee.find_manager_by_department(dept).employees[0]
    end
# insted of select I used map as it gets rid of the instance that calls it
    def earning_more
        @@all.select{|employee| employee.salary > self.salary}
    end

    def tax_bracket_above
        earning_more.select{|employee| employee.salary - self.salary < 1000}
    end

    def earning_less
        @@all.select{|employee| employee.salary < self.salary}
    end

    def tax_bracket_below
        earning_less.select{|employee| self.salary - employee.salary < 1000}
    end

    def tax_bracket
       tax_bracket_above + tax_bracket_below
    end

end

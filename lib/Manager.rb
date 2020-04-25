class Manager

    @@all = []

    attr_accessor :name, :department, :age

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end
    
    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        Manager.all.select{|depx| depx.department == self}
    end

    def self.avg_age
        a = Manager.all.map{|age| age.age}
        b = a.sum
        (b/a.length).to_f
    end

end

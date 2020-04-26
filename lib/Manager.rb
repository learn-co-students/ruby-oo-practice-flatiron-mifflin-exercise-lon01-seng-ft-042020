require 'pry'
class Manager
    attr_reader :name, :department, :age 

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age =age
        @@all << self
    end

    def self.all
        @@all
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
        self.all.map {|manager| manager.department}.uniq
    end

    def self.average_age
        total_age = self.all.reduce(0) {|sum, manager| sum + manager.age}.to_f
        total_age / @@all.length
    end

end
class Manager

    attr_reader :name, :department, :age
    @@all = []

    def initialize(name,department,age)
        @name = name
        @department = department 
        @age = age 
        @@all << self
    end
    
    def employees
        Employee.all.select{|employee| employee.manager_name == self.name}
    end
    
    def self.all
        @@all
    end
    
    def hire_employee(employee_name,salary)
        Employee.new(employee_name,salary,self.name) 
    end
    
    def self.all_departments
        @@all.map {|manager| manager.department}
        #should this be Manager.all?
    end

    def self.average_age
        total_age = @@all.map {|manager| manager.age}.sum.to_f
        number_of_managers = @@all.length
        total_age/number_of_managers
    end
end

class Employee 

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end


end

class Manager < Employee

    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @employees = []
    end

    def add_employees(subordinates)
        @employees << subordinates
    end

    def bonus(multiplier)
        self.total_salary * multiplier
    end

    def total_salary
        total_salary = 0
        @employees.each do |employee|
            if self.is_a?(Manager)
                total_salary += employee.salary + employee.total_salary
            else
                total_salary += employee.salary
            end
        end
        total_salary
    end
    

end
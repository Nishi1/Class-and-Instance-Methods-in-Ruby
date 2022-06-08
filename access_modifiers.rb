=begin
In Object oriented programming, encapsulation refers to binding data and operations under a single unit.
Encapsulation leads to data abstraction or data hiding.
We may want to hide data related to Employee within Employee class, and not allow outside objects to change them.

In Ruby the only way we can control changes to state of an Object is using instance methods. This is because instance variable that starts with @ is private.

In Ruby, we have the following access modifiers to be used on methods.
Public
Private
Protected
=end

### Public
In this all members are available to everyone to modify.
Let us see an example Employee class with public members.
    
class Employee
    public
        def setEmployeeId(empId)
            @employeeId = empId
        end

        def setEmployeeName(empName)
            @employeeName = empName
        end

        def getEmployeeId
            return @employeeId
        end

        def getEmployeeName
            return @employeeName
        end
end

```
We declared setEmployeeId/getEmployeeId and setEmployeeName/getEmployeeName under public access modifier.
We can now access these methods anywhere we create Employee objects. Note that in this scenario, we can omit the public specifier, it is taken as public by default.
```

employee1 = Employee.new
employee1.setEmployeeId(5)
employee1.setEmployeeName('Water')
puts "Employee ID is #{employee1.getEmployeeId()}"
puts "Employee Name is #{employee1.getEmployeeName()}"

Output:
Employee ID is 5
Employee Name is Water


### Private
In this the members can only be accessed by functions inside the class.
    
class Employee
    def initialize(exp)
        @experience = exp
    end

    private
        def setSalary(salary)
            @salary = salary
        end

    public
        def setData
            if @experience == "Fresher"
                setSalary("1000 Rupees")
            elsif @experience == "One"
                setSalary("100000 Dollars")
            elsif @experience == "Ten"
                setSalary("700000000 Dollars")
            end
        end

        def getSalary
            return @salary
        end
end

We declared setSalary under private access modifier.
The only way to set them now is via experience set in constructor within the Employee class.
We can now create employee object with parameters as shown below.

fresher = Employee.new("Fresher")
fresher.setData()
puts "Fresher Salary is #{fresher.getSalary()}"

oneYearExperience = Employee.new("One")
oneYearExperience.setData()
puts "One Year Experience Salary is #{oneYearExperience.getSalary()}"

tenYearExperience = Employee.new("Ten")
tenYearExperience.setData()
puts "Ten Year Experience Salary is #{tenYearExperience.getSalary()}"
  
Output:
Fresher Salary is 1000 Rupees
One Year Experience Salary is 100000 Dollars
Ten Year Experience Salary is 700000000 Dollars
  
###Protected
The members in protected class can only be accessed by functions inside subclass. We will see subclass concept in Inheritance.
    
class Employee
    protected
        def setSalary(salary)
            @salary = salary
        end
    public
        def getSalary
            return @salary
        end
end

class Manager < Employee
    def initialize
        setSalary(1000)
    end
end

employee1 = Manager.new
puts "Employee Salary is #{employee1.getSalary()}"
  
Output:
Employee Salary is 1000  

require 'active_support'

autoload :Subject, './observer/subject'
autoload :Employee, './observer/employee'
autoload :Observer, './observer/observer'

include Observer 

fred = Employee.new('Fred', 'Crane Operator', 30000)

fred.add_observer &Observer::PAYROLL
fred.add_observer &Observer::TAXMAN

fred.salary = 3500

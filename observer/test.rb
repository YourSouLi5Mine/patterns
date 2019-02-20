require 'active_support'

autoload :Employee, './observer/employee'
autoload :Payroll, './observer/payroll'

payroll = Payroll.new
fred = Employee.new('Fred', 'Crane Operator', 30000, payroll)
fred.salary = 3500

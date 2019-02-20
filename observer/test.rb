require 'active_support'

autoload :Employee, './observer/employee'
autoload :Payroll, './observer/payroll'
autoload :TaxMan, './observer/tax_man'

fred = Employee.new('Fred', 'Crane Operator', 30000)

payroll = Payroll.new
fred.add_observer(payroll)
taxman = TaxMan.new
fred.add_observer(taxman)

fred.salary = 3500

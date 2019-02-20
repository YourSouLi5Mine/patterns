module Observer
  PAYROLL = lambda do |changed_employee|
    puts("Cut a new check for #{changed_employee.name}!")
    puts("His salary is now #{changed_employee.salary}!")
  end

  TAXMAN = lambda do |changed_employee|
    puts("Send #{changed_employee.name} a new tax bill!")
  end
end

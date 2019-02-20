class Employee
  attr_reader :name
  attr_accessor :title, :salary

  def initialize( name, title, salary )
    @name = name
    @title = title
    @salary = salary
    @observer = [] 
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end

  def notify_observers 
    @observer.each do |observer|
      observer.update(self)
    end
  end

  def add_observer(observer)
    @observer << observer
  end

  def delete_observer(observer)
    @observer.delete(observer)
  end
end

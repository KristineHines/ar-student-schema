require_relative '../../db/config'

# implement your Student model here
class Student <ActiveRecord::Base
  attr_accessible :name, :age

  def assign_attributes(args)
    @first_name = args[:first_name]
    @last_name = args[:last_name]
    @gender = args[:gender]
    @birthday = args[:birthday]
  end
  

  def name
    @name = "#{@first_name} #{@last_name}"
  end

  def age
    now = Date.today
    @age = now.year - @student.birthday.year - ((now.month > @student.birthday.month || (now.month == @student.birthday.month && now.day >= @student.birthday.day)) ? 0 : 1)
  end
 
end
require_relative '../../db/config'

# implement your Student model here
class Student <ActiveRecord::Base
  attr_reader :birthday
  attr_accessible :name, :age, 
 
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
    # now = Time.now
    # age = now.year - birthday.year - (birthday.to_date.change(:year => now.year) > now ? 1 : 0)
    Time.year - birthday.year - 1
  end
 
end

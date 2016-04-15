class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true

  after_create :increment_employee_count


  def increment_employee_count
    if gender == 'M'
      store.male_employees += 1
    elsif gender == 'F'
      store.female_employees += 1
    end
    store.save
  end

  def annual_salary
    hourly_rate * 1950
  end

  def self.average_hourly_rate_for(gender_to_check)
  # if gender_to_check.nil?
  #   results = where('gender = ?', gender_to_check)
  # else
  #   results = all
  # end
  #   results.average(:hourly_rate).round(2)
  # end
    ## OR

    results = gender_to_check ? where(gender: gender_to_check) : all
    results.average(:hourly_rate).round(2)
  end

  # DONT need to write Employee.where or Employee.all.where because this is a class method - dont need to write self either because it is going to do that anyway
end

# IN 10.sql 

#WE DOnt use sum because
#sum is a aggregation method. we dont have multiple values for the same stores. and if we do use sum (possible) we 
# would HAVE TO use GROUP BY because they go together. all aggregation methods must be grouped by something, in this case stores.name

class Employee < ActiveRecord::Base
  belongs_to :store
  validates  :first_name, presence: true
  validates  :last_name, presence: true

  after_create :increment_store_female_employees, if: :store
  after_create :increment_store_male_employees, if: :store

  after_destroy :decrement_store_female_employees, if: :store
  after_destroy :decrement_store_male_employees, if: :store

  def increment_store_female_employees
    if self.gender == 'F'
    female_employees = store.female_employees.to_i
    store.female_employees = female_employees + 1
    store.save
    end
  end
  
  def increment_store_male_employees
    if self.gender == 'M'
    male_employees = store.male_employees.to_i
    store.male_employees = male_employees + 1
    store.save
    end
  end

  def decrement_store_female_employees
    if self.gender == 'F'
    female_employees = store.female_employees.to_i
    store.female_employees = female_employees - 1
    store.save
    end
  end
  
  def decrement_store_male_employees
    if self.gender == 'M'
    male_employees = store.male_employees.to_i
    store.male_employees = male_employees - 1
    store.save
    end
  end

  def annual_salary
    hourly_rate * 1950
  end

  def self.average_hourly_rate_for(gender)
    if gender == 'M'
      Employee.all.where('gender = ?','M').average(:hourly_rate).round(2)
    elsif gender == 'F'
      Employee.all.where('gender = ?','F').average(:hourly_rate).round(2)
    else
      Employee.all.average(:hourly_rate)
    end
  end

end

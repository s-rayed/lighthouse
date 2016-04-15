o class Store < ActiveRecord::Base
  has_many :employees

  validates :name, 
    presence: true, 
    length: { maximum: 25 }

  validates :annual_revenue,
    numericality: {
      greater_than_or_equal_to: 0,
       only_integer: true
     }

  validates :male_employees, numericality: {greater_than_or_equal_to: 0, only_integer: true}
  validates :female_employees, numericality: {greater_than_or_equal_to: 0, only_integer: true}

  def annual_expense
    employees.inject(0){|sum_expense, employee|
      sum_expense += employee.annual_salary
    } #on the fly means it isnt storing any values in any variables

    ## CAN ALSO DO THIS WITH .EACH
    # sum_expense = 0
    # employees.each do |employee|
    #   sum_expense += employee.annual_salary
    # end
    # sum_expense
  end

  def annual_profit
    annual_revenue - annual_expense
  end





end

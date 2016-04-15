class Store < ActiveRecord::Base

  MX_HRS = 1950

  has_many :employees

  validates :name, presence: true, length: {maximum:25}
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0, only_integer: true}
  validates :male_employees, numericality: {greater_than_or_equal_to: 0, only_integer: true}
  validates :female_employees, numericality: {greater_than_or_equal_to: 0, only_integer: true}

  def annual_expense
    Employee.sum(:hourly_rate)* MX_HRS
  end

  def annual_profit
    annual_revenue - annual_expense
  end

end

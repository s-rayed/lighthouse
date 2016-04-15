require_relative 'employee'

class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: {maximum:25}
  validates :annual_revenue, :numericality => {:greater_than => -1, only_integer: true}
  validates :male_employees, :numericality => {:greater_than => -1, only_integer: true}
  validates :female_employees, :numericality => {:greater_than => -1, only_integer: true}

  def annual_expense
    Employee.sum(:hourly_rate)*1950
  end

  def annual_profit
    self.annual_revenue - self.annual_expense
  end
end

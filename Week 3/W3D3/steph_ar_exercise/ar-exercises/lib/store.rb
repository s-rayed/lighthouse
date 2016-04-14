class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, :numericality => {:greater_than => 0}
  validates :annual_revenue, presence: true
  # validates :mens_apparel, presence: true
  # validates :womens_apparel, presence: true

end

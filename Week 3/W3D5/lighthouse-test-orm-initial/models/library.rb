class Library < ActiveRecord::Base
  has_many :books, dependent: :destroy
  belongs_to :library
  has_many :lends

  validates :name,
    presence: true,
    length: {minimum: 4},
    uniqueness: true

  validates :late_fee, :capacity,
    numericality: {only_integer: true}

  validates :capacity, 
    numericality: {greater_than_or_equal_to: 1000}


  def revenue

    revenue += library.late_fee
  end


end

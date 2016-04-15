class Book < ActiveRecord::Base
  belongs_to :library
  has_many :lends

  validates :title,
    presence: true,
    length: {maximum:500}

  validates :author,
    presence: true,
    length: {in: 5..100}

  validates :pages,
    presence: true,
    numericality: {greater_than_or_equal_to: 4}

  def available?
    lends.nil?
  end

end

class Store < ActiveRecord::Base

  has_many :employees

  validates_presence_of :name

  def name
    errors.add(:name, "can't be blank")
    errors.add(:name, "is too long (maximum is 25 characters)") unless :name.length < 26
  end

end

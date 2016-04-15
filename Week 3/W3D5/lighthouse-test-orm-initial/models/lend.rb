class Lend < ActiveRecord::Base
  belongs_to :library
  belongs_to :book

  validates :due, numericality: {only_integer: true}

  validate :due_date_after_checkout,
    :checkin_date_before_checkout,
    :overdue?

  def due_date_after_checkout
    if due.day < Date.today.day
      errors.add(:due, 'due date must be after checkout')
    end
  end

  def checkin_date_before_checkout
    if checkin.day < checkout.day
      errors.add(:checkin, 'checkin date must be after checkout')
    end
  end

  def overdue?
    if due.day < Date.today.day 
      true
    elsif due.day > checkin.day
      false
    end
  end

  def fees
    (Date.today.day - due.day) * library.late_fee
  end
    


end

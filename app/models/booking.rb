class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :is_accepted, precense: true
  validates :check_in, precense: true
  validates :check_out, precense: true
  validates :price_per_day, precense: true
  validates :amount, precense: true
  validates :days, precense: true
end

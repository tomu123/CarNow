class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :is_accepted, presence: true
  validates :check_in, presence: true
  validates :check_out, presence: true
  validates :price_per_day, presence: true
  validates :amount, presence: true
  validates :days, presence: true
end

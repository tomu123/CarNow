class Car < ApplicationRecord
  belongs_to :user
  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :number_plate, presence: true
  validates :color, presence: true
  validates :city, presence: true
  validates :price_per_day, presence: true
end

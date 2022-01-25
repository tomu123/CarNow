class Car < ApplicationRecord
  belongs_to :user
  validates :brand, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 3}
  validates :model, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 3}
  validates :year, presence: true
  validates :number_plate, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 7}
  validates :color, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 3}
  validates :city, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 5}
  validates :price_per_day, presence: true
end
